# ``NerdzObfuscatedString``

Keep sensitive string literals out of your binary by assembling them one character at a time.

## Overview

NerdzObfuscatedString adds one computed property to `String` for every character it supports. Each
property appends exactly one character to the value it is called on, so a chain of property accesses
builds a string at runtime.

```swift
import NerdzObfuscatedString

let identifier = "c".o.m.dot.n.e.r.d.z.l.a.b.dot.e.x.a.m.p.l.e
// "com.nerdzlab.example"
```

Letters map to properties of the same name. Digits are prefixed with an underscore, because a Swift
identifier cannot start with a digit. Punctuation uses descriptive names such as ``Swift/String/space``
and ``Swift/String/forward_slash``, and the dollar sign is available as the backticked identifier
``Swift/String/$``.

### How the obfuscation works

Every property is a one line addition of a single character literal.

```swift
public extension String {
    var a: String { return self + "a" }
}
```

Swift stores a string of up to 15 UTF-8 bytes inline as an immediate value rather than as a pointer
into the binary's string table. A one character literal therefore never lands in the `__cstring`
section, and the concatenation happens at runtime. The assembled value exists only in memory while
the app runs, so a tool that scans the compiled binary for readable text never sees it.

### What it protects against, and what it does not

This is a deterrent against casual extraction. It is not encryption, and it is not security.

It defeats `strings`, `otool`, the string view of a disassembler, and anyone grepping an IPA for API
keys, product identifiers, or endpoint URLs.

It does not defeat a debugger attached to the running process, which reads the assembled value
straight out of memory. It does not defeat a runtime hook placed on `String` concatenation or on the
call site. It does not defeat someone reading the call sequence in a disassembly, because each
property is a distinct getter and the order of the calls spells the string out.

Use it for values whose leakage is an inconvenience, such as in-app purchase identifiers or analytics
endpoints. Anything that has to stay secret from a determined attacker should not ship in a client
binary at all.

## Topics

### Essentials

- <doc:GettingStarted>

### Lowercase letters

- ``Swift/String/a``
- ``Swift/String/b``
- ``Swift/String/c``
- ``Swift/String/d``
- ``Swift/String/e``
- ``Swift/String/f``
- ``Swift/String/g``
- ``Swift/String/h``
- ``Swift/String/i``
- ``Swift/String/j``
- ``Swift/String/k``
- ``Swift/String/l``
- ``Swift/String/m``
- ``Swift/String/n``
- ``Swift/String/o``
- ``Swift/String/p``
- ``Swift/String/q``
- ``Swift/String/r``
- ``Swift/String/s``
- ``Swift/String/t``
- ``Swift/String/u``
- ``Swift/String/v``
- ``Swift/String/w``
- ``Swift/String/x``
- ``Swift/String/y``
- ``Swift/String/z``

### Uppercase letters

- ``Swift/String/A``
- ``Swift/String/B``
- ``Swift/String/C``
- ``Swift/String/D``
- ``Swift/String/E``
- ``Swift/String/F``
- ``Swift/String/G``
- ``Swift/String/H``
- ``Swift/String/I``
- ``Swift/String/J``
- ``Swift/String/K``
- ``Swift/String/L``
- ``Swift/String/M``
- ``Swift/String/N``
- ``Swift/String/O``
- ``Swift/String/P``
- ``Swift/String/Q``
- ``Swift/String/R``
- ``Swift/String/S``
- ``Swift/String/T``
- ``Swift/String/U``
- ``Swift/String/V``
- ``Swift/String/W``
- ``Swift/String/X``
- ``Swift/String/Y``
- ``Swift/String/Z``

### Digits

- ``Swift/String/_0``
- ``Swift/String/_1``
- ``Swift/String/_2``
- ``Swift/String/_3``
- ``Swift/String/_4``
- ``Swift/String/_5``
- ``Swift/String/_6``
- ``Swift/String/_7``
- ``Swift/String/_8``
- ``Swift/String/_9``

### Punctuation and symbols

- ``Swift/String/space``
- ``Swift/String/point``
- ``Swift/String/dash``
- ``Swift/String/comma``
- ``Swift/String/semicolon``
- ``Swift/String/colon``
- ``Swift/String/apostrophe``
- ``Swift/String/quotation``
- ``Swift/String/plus``
- ``Swift/String/equals``
- ``Swift/String/paren_left``
- ``Swift/String/paren_right``
- ``Swift/String/asterisk``
- ``Swift/String/ampersand``
- ``Swift/String/caret``
- ``Swift/String/percent``
- ``Swift/String/$``
- ``Swift/String/pound``
- ``Swift/String/at``
- ``Swift/String/exclamation``
- ``Swift/String/question_mark``
- ``Swift/String/back_slash``
- ``Swift/String/forward_slash``
- ``Swift/String/curly_left``
- ``Swift/String/curly_right``
- ``Swift/String/bracket_left``
- ``Swift/String/bracket_right``
- ``Swift/String/bar``
- ``Swift/String/less_than``
- ``Swift/String/greater_than``
- ``Swift/String/underscore``

### Aliases

- ``Swift/String/dot``
