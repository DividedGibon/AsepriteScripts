# DEPENDENCY_RULES.md

## DEPENDENCY CONTROL

Do not add, remove, or upgrade dependencies casually.

Before changing dependencies, state:

- what dependency is involved
- why the change is needed
- what alternatives exist
- what risks the change introduces

---

## APPROVAL RULE

Dependency changes require approval unless the user explicitly asked for them.

---

## VERSION SAFETY

Do not assume the latest version is compatible.
Do not assume existing code will survive a dependency upgrade unchanged.
