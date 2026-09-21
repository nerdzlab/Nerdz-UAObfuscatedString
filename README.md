# NerdzObfuscatedString

> Keep sensitive string literals out of your binary by assembling them one character at a time.

[![CI](https://github.com/nerdzlab/Nerdz-UAObfuscatedString/actions/workflows/ci.yml/badge.svg)](https://github.com/nerdzlab/Nerdz-UAObfuscatedString/actions/workflows/ci.yml)
[![Swift Package Manager](https://img.shields.io/badge/SPM-compatible-brightgreen.svg)](https://swift.org/package-manager)
[![Platform](https://img.shields.io/badge/platform-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS%20%7C%20visionOS-lightgrey.svg)](https://developer.apple.com)
[![License](https://img.shields.io/badge/license-MIT-black.svg)](LICENSE)

NerdzObfuscatedString is a Swift fork of [UrbanApps/UAObfuscatedString](https://github.com/UrbanApps/UAObfuscatedString).
It adds one computed property per character to `String`, so a literal like `"com.nerdzlab.example"`
can be written as a chain of property accesses that builds the value at runtime. Tools such as
`strings` that scan a compiled binary for readable text will not find the assembled result.

The fork drops the Objective-C `NSMutableString` half of the original and ships as a Swift package.

## Requirements

The library depends only on the Swift standard library, so it runs on iOS 12, macOS 10.13, tvOS 12,
watchOS 4, visionOS 1 and later, and it builds on Linux. Building it requires Xcode 15 or later
(Swift tools 5.9), which the Swift Testing based test suite needs. The runtime deployment target is
unaffected.

## Installation

NerdzObfuscatedString is distributed through Swift Package Manager. Add the package to your
`Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/nerdzlab/Nerdz-UAObfuscatedString.git", from: "2.0.0")
]
```

Then add the product to your target:

```swift
.target(
    name: "MyApp",
    dependencies: [
        .product(name: "NerdzObfuscatedString", package: "Nerdz-UAObfuscatedString")
    ]
)
```

Or in Xcode, choose File, Add Package Dependencies, and paste the repository URL.

## Quick start

Start with the first character as a one character string literal and append the rest as properties.

```swift
import NerdzObfuscatedString

let identifier = "c".o.m.dot.n.e.r.d.z.l.a.b.dot.e.x.a.m.p.l.e
// "com.nerdzlab.example"

let sentence = "T".h.i.s.space.i.s.space.a.space.t.e.s.t.dot
// "This is a test."
```

Letters map to properties of the same name. Digits are prefixed with an underscore because Swift
identifiers cannot start with a digit. Punctuation uses descriptive names, and `$` is available as
a backticked identifier. See the full table below.

```swift
let key = "K".e.y.underscore._1.`$`
// "Key_1$"
```

## How it works

Each property appends exactly one character:

```swift
public extension String {
    var a: String { return self + "a" }
}
```

Swift stores strings of up to 15 UTF-8 bytes inline as immediate values rather than as pointers
into the binary's string table. A one character literal therefore never appears in the `__cstring`
section, and the concatenation happens at runtime on the heap. The full value exists only in memory
while the app runs.

## What it does and does not protect against

This is a deterrent against casual extraction, not encryption or security.

It does protect against:

- `strings`, `otool`, `Hopper`'s string view, and similar tools that list readable text in a binary.
- Someone grepping an IPA for API keys, product identifiers, or endpoint URLs.

It does not protect against:

- Attaching a debugger and reading the assembled value at runtime.
- Hooking `String` concatenation or the call site with runtime instrumentation.
- Reading the call sequence in a disassembly. Each property is a distinct getter, so the order of
  calls spells out the string to anyone willing to map them.

Use it for values whose leakage is an inconvenience, such as in-app purchase identifiers or analytics
endpoints. Do not rely on it for anything that must stay secret from a determined attacker; secrets
of that kind should not ship in a client binary at all.

## Character reference

### Letters

| Property | Appends |
|---|---|
| `a` through `z` | `a` through `z` |
| `A` through `Z` | `A` through `Z` |

### Digits

| Property | Appends |
|---|---|
| `_0` through `_9` | `0` through `9` |

### Punctuation and symbols

| Property | Appends | Property | Appends |
|---|---|---|---|
| `space` | ` ` | `pound` | `#` |
| `point` | `.` | `at` | `@` |
| `dot` (alias of `point`) | `.` | `exclamation` | `!` |
| `dash` | `-` | `question_mark` | `?` |
| `comma` | `,` | `back_slash` | `\` |
| `semicolon` | `;` | `forward_slash` | `/` |
| `colon` | `:` | `curly_left` | `{` |
| `apostrophe` | `'` | `curly_right` | `}` |
| `quotation` | `"` | `bracket_left` | `[` |
| `plus` | `+` | `bracket_right` | `]` |
| `equals` | `=` | `bar` | `\|` |
| `paren_left` | `(` | `less_than` | `<` |
| `paren_right` | `)` | `greater_than` | `>` |
| `asterisk` | `*` | `underscore` | `_` |
| `ampersand` | `&` | `` `$` `` | `$` |
| `caret` | `^` | | |
| `percent` | `%` | | |

Unlike the Objective-C original, there is no `_` alias for a space, because `_` is a reserved
identifier in Swift. Use `space` instead.

## Migrating from 1.x

Version 2.0.0 renames the package, product, and module. Update the import and the product name:

```swift
// Before
import UAObfuscatedString

// After
import NerdzObfuscatedString
```

```swift
// Before
.product(name: "UAObfuscatedString", package: "Nerdz-UAObfuscatedString")

// After
.product(name: "NerdzObfuscatedString", package: "Nerdz-UAObfuscatedString")
```

The repository URL is unchanged. Every property keeps its name and behavior.

## Attribution

The character mapping and the approach come from [UAObfuscatedString](https://github.com/UrbanApps/UAObfuscatedString)
by Matt Long and Urban Apps, published under the MIT license.

## License

NerdzObfuscatedString is available under the MIT license. See [LICENSE](LICENSE) for details.
