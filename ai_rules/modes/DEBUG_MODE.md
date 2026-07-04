# DEBUG_MODE.md

Use this mode when investigating a bug or broken behaviour.

## OBJECTIVE

Find the cause before attempting the fix.

---

## DEBUG RULES

Do not patch blindly.
Do not stack guesses.
Do not rewrite major areas without evidence.

Start by stating:

- symptom
- likely causes
- relevant files
- fastest safe diagnostic path

---

## DEBUG PROCESS

1. define the failure clearly
2. narrow the likely source
3. inspect evidence
4. propose the smallest plausible fix
5. state what could still be wrong
6. test the fix

---

## REPORTING

Clearly distinguish between:

- confirmed cause
- likely cause
- speculative cause
