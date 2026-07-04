# IOS_RULES.md

Use this file for iOS, iPadOS, watchOS, and macOS apps built with Swift (SwiftUI or UIKit) in Xcode.

## CORE IOS RULES

- respect the existing project structure and target layout
- prefer SwiftUI or UIKit consistently with the existing codebase; do not mix paradigms casually
- keep view code and business logic separated
- update UI only on the main thread / main actor
- prefer structured concurrency (async/await) over ad-hoc callbacks in new code, if the codebase allows it
- avoid retain cycles: check closure capture lists and delegate references

---

## IOS SAFETY

Before changing code, identify whether the work touches:

- storyboards or xibs (IBOutlet/IBAction connections break silently)
- Info.plist keys (permissions, capabilities, URL schemes)
- entitlements, signing, or provisioning
- the Xcode project file (targets, build phases, build settings)
- Core Data models or other persisted schemas
- app lifecycle, background modes, or push handling

State this clearly before acting.

---

## DO NOT CASUALLY

- rename types or members referenced from storyboards/xibs
- edit the `.pbxproj` by hand beyond what is necessary
- add permissions or capabilities without stating why (each one is user-visible and review-sensitive)
- change deployment target, Swift version, or signing configuration
- add SPM/CocoaPods dependencies without approval (see DEPENDENCY_RULES)

---

## UI AND UX

Changes must consider:

- all relevant device sizes and orientations
- Dynamic Type and accessibility (VoiceOver labels, contrast)
- light and dark mode
- safe areas and keyboard avoidance
- loading, empty, and error states

---

## VERIFICATION

- code that compiles is not verified; behaviour must be checked in the simulator or on device where feasible
- if simulator/device verification is not possible, state that explicitly using the approved phrases

---

## LINT AND FORMAT

If `swiftlint` / `swiftformat` are available, use them as part of verification:

- run `swiftlint` before reporting work ready
- run `swiftformat` only on files you changed
- fix or explicitly report remaining warnings; do not hide them
If missing, they can be installed with `brew install swiftlint swiftformat`. Installing tools requires user approval per DEPENDENCY_RULES.

---

## SIMULATOR VERIFICATION VIA XCODEBUILDMCP

If XcodeBuildMCP tools are available, prefer them for verification: build the app, run it in the simulator, read logs, and capture screenshots to check behaviour and UI — instead of stopping at "implemented but not verified".

If the tools are not available, they can be registered with `claude mcp add --scope user xcodebuild -- npx -y xcodebuildmcp@latest mcp` (requires user approval).
