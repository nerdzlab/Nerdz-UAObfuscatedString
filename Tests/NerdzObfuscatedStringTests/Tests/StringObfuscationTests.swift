//
//  StringObfuscationTests.swift
//  NerdzObfuscatedStringTests
//

import Testing
@testable import NerdzObfuscatedString

@Suite("String Obfuscation Tests")
struct StringObfuscationTests {

    @Suite("Character Mappings")
    struct CharacterMappings {

        @Test(arguments: TestData.allMappings)
        func testWhenAppliedToEmptyStringShouldProduceCharacter(mapping: CharacterMapping) {
            // Arrange
            let receiver = ""

            // Act
            let result = receiver[keyPath: mapping.keyPath]

            // Assert
            #expect(result == String(mapping.character))
        }

        @Test(arguments: TestData.allMappings)
        func testWhenAppliedToPrefixShouldAppendCharacter(mapping: CharacterMapping) {
            // Arrange
            let receiver = TestData.prefix

            // Act
            let result = receiver[keyPath: mapping.keyPath]

            // Assert
            #expect(result == receiver + String(mapping.character))
        }

        @Test func testWhenAllGroupsCombinedShouldCoverEveryPublicProperty() {
            #expect(TestData.allMappings.count == TestData.expectedMappingCount)
        }
    }

    @Suite("Chaining")
    struct Chaining {

        @Test func testWhenCharactersChainedShouldBuildSentence() {
            // Arrange
            let expected = "This is a test."

            // Act
            let result = "T".h.i.s.space.i.s.space.a.space.t.e.s.t.dot

            // Assert
            #expect(result == expected)
        }

        @Test func testWhenMixedGroupsChainedShouldBuildIdentifier() {
            // Arrange
            let expected = "com.nerdzlab.Key_1$"

            // Act
            let result = "c".o.m.dot.n.e.r.d.z.l.a.b.point.K.e.y.underscore._1.`$`

            // Assert
            #expect(result == expected)
        }

        @Test func testWhenAppliedShouldNotMutateReceiver() {
            // Arrange
            let receiver = TestData.prefix

            // Act
            _ = receiver.a.b.c

            // Assert
            #expect(receiver == TestData.prefix)
        }
    }

    @Suite("Aliases")
    struct Aliases {

        @Test func testWhenDotUsedShouldEqualPoint() {
            // Arrange
            let receiver = TestData.prefix

            // Act, Assert
            #expect(receiver.dot == receiver.point)
        }
    }
}

// MARK: - Test data

private enum TestData {
    static let prefix = "prefix"

    static let lowercaseLetters: [CharacterMapping] = [
        .init(keyPath: \.a, character: "a"), .init(keyPath: \.b, character: "b"),
        .init(keyPath: \.c, character: "c"), .init(keyPath: \.d, character: "d"),
        .init(keyPath: \.e, character: "e"), .init(keyPath: \.f, character: "f"),
        .init(keyPath: \.g, character: "g"), .init(keyPath: \.h, character: "h"),
        .init(keyPath: \.i, character: "i"), .init(keyPath: \.j, character: "j"),
        .init(keyPath: \.k, character: "k"), .init(keyPath: \.l, character: "l"),
        .init(keyPath: \.m, character: "m"), .init(keyPath: \.n, character: "n"),
        .init(keyPath: \.o, character: "o"), .init(keyPath: \.p, character: "p"),
        .init(keyPath: \.q, character: "q"), .init(keyPath: \.r, character: "r"),
        .init(keyPath: \.s, character: "s"), .init(keyPath: \.t, character: "t"),
        .init(keyPath: \.u, character: "u"), .init(keyPath: \.v, character: "v"),
        .init(keyPath: \.w, character: "w"), .init(keyPath: \.x, character: "x"),
        .init(keyPath: \.y, character: "y"), .init(keyPath: \.z, character: "z")
    ]

    static let uppercaseLetters: [CharacterMapping] = [
        .init(keyPath: \.A, character: "A"), .init(keyPath: \.B, character: "B"),
        .init(keyPath: \.C, character: "C"), .init(keyPath: \.D, character: "D"),
        .init(keyPath: \.E, character: "E"), .init(keyPath: \.F, character: "F"),
        .init(keyPath: \.G, character: "G"), .init(keyPath: \.H, character: "H"),
        .init(keyPath: \.I, character: "I"), .init(keyPath: \.J, character: "J"),
        .init(keyPath: \.K, character: "K"), .init(keyPath: \.L, character: "L"),
        .init(keyPath: \.M, character: "M"), .init(keyPath: \.N, character: "N"),
        .init(keyPath: \.O, character: "O"), .init(keyPath: \.P, character: "P"),
        .init(keyPath: \.Q, character: "Q"), .init(keyPath: \.R, character: "R"),
        .init(keyPath: \.S, character: "S"), .init(keyPath: \.T, character: "T"),
        .init(keyPath: \.U, character: "U"), .init(keyPath: \.V, character: "V"),
        .init(keyPath: \.W, character: "W"), .init(keyPath: \.X, character: "X"),
        .init(keyPath: \.Y, character: "Y"), .init(keyPath: \.Z, character: "Z")
    ]

    static let digits: [CharacterMapping] = [
        .init(keyPath: \._0, character: "0"), .init(keyPath: \._1, character: "1"),
        .init(keyPath: \._2, character: "2"), .init(keyPath: \._3, character: "3"),
        .init(keyPath: \._4, character: "4"), .init(keyPath: \._5, character: "5"),
        .init(keyPath: \._6, character: "6"), .init(keyPath: \._7, character: "7"),
        .init(keyPath: \._8, character: "8"), .init(keyPath: \._9, character: "9")
    ]

    static let punctuation: [CharacterMapping] = [
        .init(keyPath: \.space, character: " "),
        .init(keyPath: \.point, character: "."),
        .init(keyPath: \.dash, character: "-"),
        .init(keyPath: \.comma, character: ","),
        .init(keyPath: \.semicolon, character: ";"),
        .init(keyPath: \.colon, character: ":"),
        .init(keyPath: \.apostrophe, character: "'"),
        .init(keyPath: \.quotation, character: "\""),
        .init(keyPath: \.plus, character: "+"),
        .init(keyPath: \.equals, character: "="),
        .init(keyPath: \.paren_left, character: "("),
        .init(keyPath: \.paren_right, character: ")"),
        .init(keyPath: \.asterisk, character: "*"),
        .init(keyPath: \.ampersand, character: "&"),
        .init(keyPath: \.caret, character: "^"),
        .init(keyPath: \.percent, character: "%"),
        .init(keyPath: \.`$`, character: "$"),
        .init(keyPath: \.pound, character: "#"),
        .init(keyPath: \.at, character: "@"),
        .init(keyPath: \.exclamation, character: "!"),
        .init(keyPath: \.question_mark, character: "?"),
        .init(keyPath: \.back_slash, character: "\\"),
        .init(keyPath: \.forward_slash, character: "/"),
        .init(keyPath: \.curly_left, character: "{"),
        .init(keyPath: \.curly_right, character: "}"),
        .init(keyPath: \.bracket_left, character: "["),
        .init(keyPath: \.bracket_right, character: "]"),
        .init(keyPath: \.bar, character: "|"),
        .init(keyPath: \.less_than, character: "<"),
        .init(keyPath: \.greater_than, character: ">"),
        .init(keyPath: \.underscore, character: "_")
    ]

    static let aliases: [CharacterMapping] = [
        .init(keyPath: \.dot, character: ".")
    ]

    static let allMappings = lowercaseLetters + uppercaseLetters + digits + punctuation + aliases

    static let expectedMappingCount = 94
}
