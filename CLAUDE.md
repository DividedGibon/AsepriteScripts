# AI Rules Framework — project instructions

This project uses the AI Rules Framework. The always-on rules below are imported automatically. Choose one mode and one tech rule per task.

## Always-loaded rules

@ai_rules/MASTER_SYSTEM.md
@ai_rules/core/PROJECT_RULES.md
@ai_rules/core/BUILD_PROCESS.md
@ai_rules/core/QUALITY_BAR.md
@ai_rules/core/TESTING_RULES.md
@ai_rules/core/ACCEPTANCE_CHECKLIST.md
@ai_rules/safety/SCOPE_SAFETY.md
@ai_rules/safety/MEMORY_SAFETY.md
@ai_rules/safety/DEPENDENCY_RULES.md

## Per-task rules (read before starting work)

- **One mode** — read one of `ai_rules/modes/BUILD_MODE.md`, `REVIEW_MODE.md`, `DEBUG_MODE.md`, `REFACTOR_MODE.md`. Choose by task; default to REVIEW when unclear. Mode may change between tasks — announce switches explicitly.
- **One tech** — read the file in `ai_rules/tech/` matching this project's stack (`WEB_RULES.md`, `PYTHON_RULES.md`, `IOS_RULES.md`, `UNITY_RULES.md`, `GODOT_RULES.md`, or `DEFAULT_TECH_RULES.md`). Use DEFAULT and say so if unclear.

If rules conflict: safety > master > core > mode > tech.

## Before coding

State: task understanding, chosen mode, chosen tech rules, assumptions, risks, files affected, and a plan (or review plan in review mode). Do not implement until the user has seen and agreed to the plan. For non-trivial work, prefer Claude Code's built-in plan mode (shift+tab) so edits are blocked until the plan is approved.

## Slash commands

Mode openers are available as slash commands in `.claude/commands/`: `/air-build`, `/air-review`, `/air-debug`, `/air-refactor`. Each locks a mode, resolves the tech rule, and requires the pre-code output above.

## Tooling bootstrap (turnkey setup)

On a machine where the framework's tools are missing (`graphify`, `ruff`, `swiftlint`, `prettier`, `gdlint`, Context7/XcodeBuildMCP), offer to run `./setup-ai-tools.sh` from the project root — it idempotently installs whatever is absent and skips what's present. Run it only with the user's approval (DEPENDENCY_RULES). The project-scoped `.mcp.json` starts Context7 automatically; the graphify skill ships in `.claude/skills/`.

## graphify

This project may have a knowledge graph at graphify-out/ (build with `/graphify .`) with god nodes, community structure, and cross-file relationships.

Rules:
- For codebase questions, first run `graphify query "<question>"` when graphify-out/graph.json exists. Use `graphify path "<A>" "<B>"` for relationships and `graphify explain "<concept>"` for focused concepts. These return a scoped subgraph, usually much smaller than GRAPH_REPORT.md or raw grep output.
- If graphify-out/wiki/index.md exists, use it for broad navigation instead of raw source browsing.
- Read graphify-out/GRAPH_REPORT.md only for broad architecture review or when query/path/explain do not surface enough context.
- After modifying code, run `graphify update .` to keep the graph current (AST-only, no API cost).
