# TESTING_RULES.md

## TESTING GOAL

Tests must try to reveal failure, not merely confirm success.

---

## MINIMUM TEST THINKING

For each meaningful feature or fix, consider:

- normal input
- invalid input
- empty input
- wrong type
- failure response
- edge case
- state transition issue

---

## ANTI-FAKE TEST RULE

Do not write tests that only mirror the implementation.

A good test should be capable of failing if the implementation is wrong.

---

## TEST EXPLANATION

For each proposed or written test, explain:

- what bug it would catch
- why that bug is plausible
- whether the test is critical or nice-to-have

---

## CRITICAL PATHS

Critical paths must not be left entirely untested if tests are feasible.

If tests are not feasible, explicitly say why.
