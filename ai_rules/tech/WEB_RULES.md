# WEB_RULES.md

Use this file for websites, web apps, front-end interfaces, and typical browser-based experiences.

## CORE WEB RULES

- mobile-first layout
- semantic HTML where applicable
- accessible interaction patterns
- keyboard accessibility
- sensible performance choices
- avoid layout shift and unstable UI
- avoid blocking the main thread unnecessarily

---

## UI STATES

Where relevant, include:

- loading state
- empty state
- error state
- success state
- disabled state

---

## FORM RULES

Forms must have:

- validation
- clear error messages
- clear submit state
- prevention of accidental duplicate submission where relevant

---

## RESPONSIVE RULES

Check at minimum:

- small mobile
- large mobile
- tablet
- desktop

No clipped content.
No overlapping controls.
No hidden critical actions.

---

## FRONT-END SAFETY

Do not expose secrets in client code.
Do not assume client-side validation is enough for security-sensitive systems.

---

## LINT AND FORMAT

If ESLint/Prettier are available (project config or global), use them as part of verification:

- run `eslint` on changed files before reporting work ready
- run `prettier --write` only on files you changed
- fix or explicitly report remaining warnings; do not hide them
If missing, they can be installed per-project with `npm install -D prettier eslint` or globally with `npm install -g prettier eslint`. Installing tools requires user approval per DEPENDENCY_RULES.
