# Changelog

All notable changes to NerdzObfuscatedString are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.1]

### Added
- DocC documentation catalog with a landing page, a Getting Started article, and a doc comment on
  every one of the 94 properties, published to GitHub Pages on release. The library now documents
  what the obfuscation protects against and, just as importantly, what it does not.

### Fixed
- The release workflow emitted symbol graphs without extension block symbols, so DocC produced no
  page for anything in this library, whose entire API is an extension on `String`. It also dropped
  the digit properties, because the extractor treats a leading underscore as private. Both are now
  requested explicitly.

## [2.0.0]

This is a major release. It contains one breaking change: the package, product, and module are
renamed from `UAObfuscatedString` to `NerdzObfuscatedString`. See Migrating from 1.x in the README.

### Added
- MIT `LICENSE` file carrying the Urban Apps copyright from the upstream project and the NerdzLab
  copyright for the fork. The fork previously shipped without the license text that MIT requires.
- Swift Testing target (`NerdzObfuscatedStringTests`) covering every character mapping, chaining,
  value semantics, and the `dot` alias, with 100% line coverage of `Sources`.
- Rewritten README with installation, usage, a full character reference, an explanation of how the
  obfuscation works, and an honest account of what it does and does not protect against.
- This changelog.
- GitHub Actions CI on Linux: build, test, and a complete strict concurrency build.
- Explicit platform declaration for iOS 12, macOS 10.13, tvOS 12, watchOS 4, and visionOS 1.

### Changed
- Package, product, target, and module renamed to `NerdzObfuscatedString`. The source file is now
  `Sources/NerdzObfuscatedString/String+Obfuscation.swift`.
- `swift-tools-version` raised from 5.3 to 5.9 for Swift Testing. This raises the minimum Xcode for
  building the package to 15. Runtime deployment targets are unchanged.
- Template comments removed from `Package.swift`.
- `.swiftpm/` is ignored and the previously committed workspace plist is untracked.

### Breaking changes
- `import UAObfuscatedString` must become `import NerdzObfuscatedString`, and the product name in
  consumers' `Package.swift` must change accordingly. The repository URL and every property name are
  unchanged.

## [1.0.4]

- Removed the `NSMutableString` extensions inherited from upstream. The library is Swift only.

## [1.0.0]

- Initial fork of [UrbanApps/UAObfuscatedString](https://github.com/UrbanApps/UAObfuscatedString)
  with Swift Package Manager support.
