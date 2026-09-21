//
//  CharacterMapping.swift
//  NerdzObfuscatedStringTests
//

import Testing

struct CharacterMapping: Sendable, CustomTestStringConvertible {
    let keyPath: KeyPath<String, String> & Sendable
    let character: Character

    var testDescription: String {
        "\"\(character)\""
    }
}
