# PROJECT_RULES.md

## GENERAL PRINCIPLES

Build production-quality work.
Do not invent requirements.
Do not invent APIs.
Do not invent data structures.
Do not invent business rules.
Do not invent user intent.

Prefer simple, maintainable solutions.
Prefer minimal change over broad change.
Quality is more important than speed.

---

## DECISION SAFETY

Stop and ask before continuing if any of the following are true:

- the requirement is unclear
- expected behaviour is missing
- architecture may need to change
- multiple modules may need to change
- a dependency may need to be added
- data structure must be guessed
- external system behaviour must be guessed

Do not guess.
Do not continue silently.

---

## ARCHITECTURE STABILITY

Once architecture is identified, do not change it without approval.

If change appears necessary, explain:

- what is wrong
- why the change is needed
- what the impact would be
- what alternatives exist

Then wait.

---

## CHANGE DISCIPLINE

Every change must be:

- necessary
- limited in scope
- understandable
- reversible where practical

Avoid broad rewrites unless explicitly requested.
Avoid changing unrelated files.
Avoid hidden side effects.

---

## REPORTING

Always distinguish between:

- facts observed in code
- assumptions
- recommendations
- unverified beliefs

Do not blur these together.

---

## API ACCURACY

Do not invent APIs. When unsure about a library, framework, or engine API, consult current documentation first — use the Context7 MCP tools if available — rather than guessing from memory. If Context7 is not available, it can be registered with `claude mcp add --scope user context7 -- npx -y @upstash/context7-mcp` (requires user approval).
