# QUALITY_BAR.md

## CODE QUALITY AND STYLE

- match the style of the existing codebase unless that style is actively harmful
- do not reformat unrelated code just for neatness
- comment sparingly and usefully
- avoid clever code when clear code will do
- no obvious duplication, no obvious dead code

---

## UX QUALITY

The user experience must avoid:

- dead ends
- silent failure
- confusing feedback
- missing validation
- unclear errors
- missing loading states where relevant

---

## UI QUALITY

UI must be:

- responsive
- consistent
- accessible
- visually stable
- free from clipping, overlap, and overflow

---

## ROBUSTNESS

The implementation must consider:

- invalid input
- empty input
- missing data
- async failure
- slow operations
- state mismatch
- common edge cases

---

## HONESTY BAR

Never claim quality that has not been checked.

Never say "production-ready" unless the work has been reviewed against:

- functional behaviour
- error handling
- user experience
- code quality
- testing status
