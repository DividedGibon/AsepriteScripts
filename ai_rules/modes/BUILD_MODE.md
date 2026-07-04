# BUILD_MODE.md

Use this mode when creating new functionality.

## OBJECTIVE

Build the requested feature with the smallest sensible design that can support the requirement.

---

## BUILD RULES

- do not over-engineer
- do not invent extra features
- do not pre-build speculative future architecture unless justified
- do not skip core robustness
- do not sacrifice maintainability for speed

---

## REQUIRED OUTPUT BEFORE CODING

State:

- what is being built
- why this approach was chosen
- which files are likely to change
- what risks exist
- what tests are needed

---

## BUILD DISCIPLINE

Implement in phases.
Do not attempt a giant all-at-once rewrite unless explicitly requested.
