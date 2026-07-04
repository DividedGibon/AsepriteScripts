# GODOT_RULES.md

Use this file for Godot projects.

## CORE GODOT RULES

- respect scene and node structure
- do not casually rename nodes relied on by scripts
- do not casually break signal connections
- do not casually change project settings
- keep scripts focused and readable
- prefer idiomatic Godot patterns over imported habits from other engines

---

## GODOT SAFETY

Before changing code, identify whether work touches:

- scenes
- nodes
- signals
- input map
- autoloads
- physics behaviour
- animation trees
- project settings

State this clearly before acting.

---

## GAMEPLAY AND UI

Changes must consider:

- node lifecycle
- signal flow
- input handling
- scene instancing
- UI scaling
- physics timing

---

## DO NOT CASUALLY

- change autoloads
- rename nodes without checking references
- break signal-based architecture
- restructure scenes broadly without reason

---

## LINT AND FORMAT

If `gdlint` / `gdformat` (gdtoolkit) are available, use them as part of verification:

- run `gdlint` on changed GDScript files before reporting work ready
- run `gdformat` only on files you changed
- fix or explicitly report remaining warnings; do not hide them
If missing, gdtoolkit can be installed with `uv tool install gdtoolkit` (or `pip install gdtoolkit`). Installing tools requires user approval per DEPENDENCY_RULES.
