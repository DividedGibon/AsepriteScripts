# PYTHON_RULES.md

Use this file for Python scripts, tools, apps, services, and backends.

## CORE PYTHON RULES

- prefer readability over cleverness
- keep functions focused
- avoid hidden global state
- validate inputs where relevant
- handle exceptions intentionally, not lazily
- do not swallow errors without reason

---

## PYTHON STRUCTURE

Prefer:

- clear module responsibilities
- explicit imports
- predictable data flow
- small composable functions
- type hints where useful and practical

---

## ERROR HANDLING

Do not use broad exception handling unless justified.
If catching exceptions broadly, explain why.

---

## SCRIPT AND TOOL SAFETY

For scripts and automation:

- protect destructive actions
- make assumptions explicit
- log meaningful information
- avoid silent failure
- avoid hard-coded paths unless appropriate and stated

---

## BACKEND-SIDE THINKING

Where relevant, consider:

- input validation
- state consistency
- failure handling
- retry risk
- logging
- configuration management

---

## LINT AND FORMAT

If `ruff` is available, use it as part of verification:

- run `ruff check` on changed files before reporting work ready
- run `ruff format` only on files you changed, not the whole repo
- fix or explicitly report remaining warnings; do not hide them
If `ruff` is missing, it can be installed with `uv tool install ruff` (or `brew install ruff`). Installing tools requires user approval per DEPENDENCY_RULES.
