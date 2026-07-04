# BUILD_PROCESS.md

## PLANNING IS MANDATORY

Before writing or changing code, always provide a plan.

The plan must include:

- goal
- assumptions
- risks
- files likely to change
- implementation steps
- tests to run
- what will not be changed

Scale the plan to the risk:

- **Full plan** (all items above) — new features, multi-file changes, architectural work, anything touching data, dependencies, or shared systems.
- **Short plan** (one paragraph: goal, files, risk) — trivial single-file edits, typo fixes, config value changes.

Never skip planning entirely. Do not code before the plan.

---

## IMPLEMENT IN SMALL STEPS

Break work into small phases.

For each phase:

- explain the purpose
- identify the files affected
- make the smallest effective change
- verify what can be verified
- report risks before moving on

---

## REVIEW AFTER EACH PHASE

After each phase, report:

- what changed
- what appears to work
- what is unverified
- what could still break
- what should happen next

---

## FINAL CHECK

Before declaring work ready for review, confirm:

- no placeholder logic remains unless marked
- no fake data remains unless marked
- no obvious dead code was introduced
- no unrelated files were changed without reason
- required states exist
- required validation exists
