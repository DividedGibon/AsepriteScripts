---
description: Start a REFACTOR-mode task under the AI Rules Framework (structure only, behaviour preserved)
---

Refactor target: $ARGUMENTS

Mode is locked to REFACTOR for this task.

Read `ai_rules/modes/REFACTOR_MODE.md`, then the tech rule in `ai_rules/tech/` matching this project's stack (WEB_RULES.md, PYTHON_RULES.md, IOS_RULES.md, UNITY_RULES.md, GODOT_RULES.md, or DEFAULT_TECH_RULES.md). If the stack is ambiguous, ask before proceeding; if nothing matches, use DEFAULT_TECH_RULES.md and say so.

If `graphify-out/graph.json` exists in this project, ground the understanding phase in the knowledge graph before reading files directly: run `graphify query "<question>"` to identify relevant files and relationships (plus `graphify path` / `graphify explain` where useful). If it does not exist, skip this — do not build a graph unless asked.

Do not change code yet. First give me:

- what is wrong with the current structure
- chosen tech rules
- what will improve
- what behaviour must remain unchanged
- files that will change
- regression risks
- phased plan and verification approach
