# ACCEPTANCE_CHECKLIST.md

Use this before reporting work as ready for review.

## FUNCTIONAL

- [ ] the main behaviour works as intended
- [ ] invalid input is handled
- [ ] empty input is handled
- [ ] likely error cases are handled
- [ ] no obvious crash path remains

## UI

- [ ] no clipping
- [ ] no overlap
- [ ] no obvious responsive breakage
- [ ] feedback is visible and understandable

## UX

- [ ] loading state exists where needed
- [ ] success state exists where needed
- [ ] error state exists where needed
- [ ] no dead-end flow is obvious

## CODE

- [ ] no obvious dead code added
- [ ] no placeholder logic left unmarked
- [ ] no secrets introduced
- [ ] no unrelated broad rewrite happened

## TESTING

- [ ] critical behaviour has been tested or reason given
- [ ] edge cases have been considered
- [ ] remaining risks are stated honestly

## HONESTY

- [ ] assumptions are clearly labelled
- [ ] verification level is clearly stated
- [ ] limitations are clearly stated
