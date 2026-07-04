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
