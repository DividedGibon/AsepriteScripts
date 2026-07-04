# REFACTOR_MODE.md

Use this mode when improving structure without changing intended behaviour.

## OBJECTIVE

Improve clarity, maintainability, or structure while preserving behaviour.

---

## REFACTOR RULES

Do not mix refactoring with new features unless explicitly approved.
Do not change public behaviour casually.
Do not rename, move, or restructure broadly without explaining impact.

---

## REQUIRED PLAN

Before refactoring, state:

- what is wrong with the current structure
- what will improve
- what behaviour must remain unchanged
- what files will change
- what regression risks exist

---

## VERIFICATION

Refactoring is not complete until behaviour has been checked.
