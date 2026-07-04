# UNITY_RULES.md

Use this file for Unity projects.

## CORE UNITY RULES

- respect the existing project structure
- do not casually change render pipeline setup
- do not casually change input system setup
- do not casually change scene wiring
- avoid hidden inspector dependencies where possible
- avoid overloading MonoBehaviours with too many responsibilities

---

## UNITY SAFETY

Before changing systems, identify whether the work touches:

- scenes
- prefabs
- scriptable objects
- input actions
- physics settings
- animation controllers
- rendering pipeline
- package dependencies

State this clearly before making changes.

---

## GAMEPLAY CHANGES

Gameplay changes must consider:

- frame-rate sensitivity
- physics timing
- collision behaviour
- camera behaviour
- player feedback
- inspector-configured references

---

## UNITY CODE QUALITY

Prefer:

- clear component responsibilities
- explicit null checks where relevant
- minimal hidden coupling
- serialised fields only where useful
- reusable systems over copy-paste scripts

---

## DO NOT CASUALLY

- break prefab references
- rename public fields used in inspector without care
- alter input bindings broadly
- change project-wide settings without approval
