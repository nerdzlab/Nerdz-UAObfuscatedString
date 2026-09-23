# Getting Started

Add the package, then build a string from a one character literal and a chain of properties.

## Overview

There is nothing to configure and nothing to initialize. Importing the module puts one property per
character on every `String`, and you write a value by starting from its first character as a literal
and appending the rest.

## Add the dependency

NerdzObfuscatedString is distributed through Swift Package Manager. Add the package to your
`Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/nerdzlab/Nerdz-UAObfuscatedString.git", from: "2.0.0")
]
```

Then add the product to the target that needs it:

```swift
.target(
    name: "MyApp",
    dependencies: [
        .product(name: "NerdzObfuscatedString", package: "Nerdz-UAObfuscatedString")
    ]
)
```

In Xcode, choose File, Add Package Dependencies, paste the repository URL, and add the
`NerdzObfuscatedString` library to your target.

## Build an identifier

Start with the first character as a one character string literal, then append the rest. Use
``Swift/String/dot`` (or ``Swift/String/point``) for a full stop, since a bare `.` would be the
member access operator.

```swift
import NerdzObfuscatedString

let identifier = "c".o.m.dot.n.e.r.d.z.l.a.b.dot.e.x.a.m.p.l.e
// "com.nerdzlab.example"
```

## Build a sentence

``Swift/String/space`` appends a space, and the uppercase letters are properties of the same name as
the character they append.

```swift
let sentence = "T".h.i.s.space.i.s.space.a.space.t.e.s.t.dot
// "This is a test."
```

## Build a URL

Punctuation has descriptive names, so a URL reads as a chain of ``Swift/String/colon``,
``Swift/String/forward_slash`` and ``Swift/String/dot``.

```swift
let endpoint = "h".t.t.p.s.colon.forward_slash.forward_slash
    .a.p.i.dot.e.x.a.m.p.l.e.dot.c.o.m.forward_slash.v._1
// "https://api.example.com/v1"
```

## Mix digits and symbols

Digits are prefixed with an underscore because a Swift identifier cannot start with a digit. The
dollar sign is a backticked identifier, and ``Swift/String/underscore`` appends a literal `_`.

```swift
let key = "K".e.y.underscore._1.`$`
// "Key_1$"
```

## Where to use it

Reach for this on values whose leakage is an inconvenience rather than a breach, such as in-app
purchase identifiers, analytics endpoints, or a product SKU. A real secret does not belong in a
client binary in any form, obfuscated or not. See the Overview in
<doc:NerdzObfuscatedString> for what the technique does and does not defend against.

## See Also

- ``Swift/String/dot``
- ``Swift/String/space``
- ``Swift/String/underscore``
