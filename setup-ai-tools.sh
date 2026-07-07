#!/usr/bin/env bash
# AI Rules Framework — one-shot tooling bootstrap (idempotent, safe to re-run).
# Installs the dev tools the framework's rules reference, if missing:
#   graphify (knowledge graph), ruff, gdtoolkit, swiftlint, swiftformat,
#   prettier, eslint, and the Context7 + XcodeBuildMCP MCP servers.
# Skips anything already installed. macOS-focused; degrades gracefully elsewhere.

set -u

ok()   { printf "  \033[32m✔\033[0m %s\n" "$1"; }
skip() { printf "  \033[33m•\033[0m %s\n" "$1"; }
have() { command -v "$1" >/dev/null 2>&1; }

echo "AI Rules Framework — tooling bootstrap"

# --- uv (installs Python-based tools in isolated envs) ---
if ! have uv; then
  if have brew; then brew install uv && ok "uv installed"; else
    curl -LsSf https://astral.sh/uv/install.sh | sh && ok "uv installed"
    export PATH="$HOME/.local/bin:$PATH"
  fi
else skip "uv already present"; fi

# --- Python-based tools via uv ---
for pkg in graphifyy ruff gdtoolkit; do
  bin=$pkg; [ "$pkg" = graphifyy ] && bin=graphify
  [ "$pkg" = gdtoolkit ] && bin=gdformat
  if have "$bin"; then skip "$bin already present"
  else uv tool install "$pkg" >/dev/null 2>&1 && ok "$bin installed (uv tool install $pkg)"; fi
done

# --- Swift tools (macOS) ---
if [ "$(uname)" = "Darwin" ]; then
  if have brew; then
    for t in swiftlint swiftformat; do
      have "$t" && skip "$t already present" || { brew install "$t" >/dev/null && ok "$t installed"; }
    done
  else skip "Homebrew not found — skipping swiftlint/swiftformat"; fi
fi

# --- Web tools ---
if have npm; then
  for t in prettier eslint; do
    have "$t" && skip "$t already present" || { npm install -g "$t" >/dev/null 2>&1 && ok "$t installed"; }
  done
else skip "npm not found — skipping prettier/eslint"; fi

# --- Graphify assistant skill (user-global, all platforms it detects) ---
if have graphify; then
  if [ -f "$HOME/.claude/skills/graphify/SKILL.md" ]; then skip "graphify skill already installed"
  else graphify install >/dev/null 2>&1 && ok "graphify skill installed"; fi
fi

# --- MCP servers (user scope, once per machine) ---
if have claude; then
  if claude mcp get context7 >/dev/null 2>&1; then skip "context7 MCP already registered"
  else claude mcp add --scope user context7 -- npx -y @upstash/context7-mcp >/dev/null && ok "context7 MCP registered"; fi
  if [ "$(uname)" = "Darwin" ]; then
    if claude mcp get xcodebuild >/dev/null 2>&1; then skip "xcodebuild MCP already registered"
    else claude mcp add --scope user xcodebuild -- npx -y xcodebuildmcp@latest mcp >/dev/null && ok "xcodebuild MCP registered"; fi
  fi
else skip "claude CLI not found — skipping MCP registration"; fi

echo "Done. Restart your Claude Code session to pick up new skills/MCP servers."
