//
//  String+Obfuscation.swift
//  NerdzObfuscatedString
//
//  Created by Matt Long on 05/11/16.
//  Copyright (c) 2016 Urban Apps. All rights reserved.
//  Copyright (c) 2021 NerdzLab. Forked from UrbanApps/UAObfuscatedString.
//

// swiftlint:disable identifier_name

// MARK: - a-z -
public extension String {
    /// Appends the lowercase letter `a`.
    var a: String { return self + "a" }
    /// Appends the lowercase letter `b`.
    var b: String { return self + "b" }
    /// Appends the lowercase letter `c`.
    var c: String { return self + "c" }
    /// Appends the lowercase letter `d`.
    var d: String { return self + "d" }
    /// Appends the lowercase letter `e`.
    var e: String { return self + "e" }
    /// Appends the lowercase letter `f`.
    var f: String { return self + "f" }
    /// Appends the lowercase letter `g`.
    var g: String { return self + "g" }
    /// Appends the lowercase letter `h`.
    var h: String { return self + "h" }
    /// Appends the lowercase letter `i`.
    var i: String { return self + "i" }
    /// Appends the lowercase letter `j`.
    var j: String { return self + "j" }
    /// Appends the lowercase letter `k`.
    var k: String { return self + "k" }
    /// Appends the lowercase letter `l`.
    var l: String { return self + "l" }
    /// Appends the lowercase letter `m`.
    var m: String { return self + "m" }
    /// Appends the lowercase letter `n`.
    var n: String { return self + "n" }
    /// Appends the lowercase letter `o`.
    var o: String { return self + "o" }
    /// Appends the lowercase letter `p`.
    var p: String { return self + "p" }
    /// Appends the lowercase letter `q`.
    var q: String { return self + "q" }
    /// Appends the lowercase letter `r`.
    var r: String { return self + "r" }
    /// Appends the lowercase letter `s`.
    var s: String { return self + "s" }
    /// Appends the lowercase letter `t`.
    var t: String { return self + "t" }
    /// Appends the lowercase letter `u`.
    var u: String { return self + "u" }
    /// Appends the lowercase letter `v`.
    var v: String { return self + "v" }
    /// Appends the lowercase letter `w`.
    var w: String { return self + "w" }
    /// Appends the lowercase letter `x`.
    var x: String { return self + "x" }
    /// Appends the lowercase letter `y`.
    var y: String { return self + "y" }
    /// Appends the lowercase letter `z`.
    var z: String { return self + "z" }
}

// MARK: - A-Z -
public extension String {
    /// Appends the uppercase letter `A`.
    var A: String { return self + "A" }
    /// Appends the uppercase letter `B`.
    var B: String { return self + "B" }
    /// Appends the uppercase letter `C`.
    var C: String { return self + "C" }
    /// Appends the uppercase letter `D`.
    var D: String { return self + "D" }
    /// Appends the uppercase letter `E`.
    var E: String { return self + "E" }
    /// Appends the uppercase letter `F`.
    var F: String { return self + "F" }
    /// Appends the uppercase letter `G`.
    var G: String { return self + "G" }
    /// Appends the uppercase letter `H`.
    var H: String { return self + "H" }
    /// Appends the uppercase letter `I`.
    var I: String { return self + "I" }
    /// Appends the uppercase letter `J`.
    var J: String { return self + "J" }
    /// Appends the uppercase letter `K`.
    var K: String { return self + "K" }
    /// Appends the uppercase letter `L`.
    var L: String { return self + "L" }
    /// Appends the uppercase letter `M`.
    var M: String { return self + "M" }
    /// Appends the uppercase letter `N`.
    var N: String { return self + "N" }
    /// Appends the uppercase letter `O`.
    var O: String { return self + "O" }
    /// Appends the uppercase letter `P`.
    var P: String { return self + "P" }
    /// Appends the uppercase letter `Q`.
    var Q: String { return self + "Q" }
    /// Appends the uppercase letter `R`.
    var R: String { return self + "R" }
    /// Appends the uppercase letter `S`.
    var S: String { return self + "S" }
    /// Appends the uppercase letter `T`.
    var T: String { return self + "T" }
    /// Appends the uppercase letter `U`.
    var U: String { return self + "U" }
    /// Appends the uppercase letter `V`.
    var V: String { return self + "V" }
    /// Appends the uppercase letter `W`.
    var W: String { return self + "W" }
    /// Appends the uppercase letter `X`.
    var X: String { return self + "X" }
    /// Appends the uppercase letter `Y`.
    var Y: String { return self + "Y" }
    /// Appends the uppercase letter `Z`.
    var Z: String { return self + "Z" }
}

// MARK: - Numbers -
public extension String {
    /// Appends the digit `1`.
    var _1: String { return self + "1" }
    /// Appends the digit `2`.
    var _2: String { return self + "2" }
    /// Appends the digit `3`.
    var _3: String { return self + "3" }
    /// Appends the digit `4`.
    var _4: String { return self + "4" }
    /// Appends the digit `5`.
    var _5: String { return self + "5" }
    /// Appends the digit `6`.
    var _6: String { return self + "6" }
    /// Appends the digit `7`.
    var _7: String { return self + "7" }
    /// Appends the digit `8`.
    var _8: String { return self + "8" }
    /// Appends the digit `9`.
    var _9: String { return self + "9" }
    /// Appends the digit `0`.
    var _0: String { return self + "0" }
}

// MARK: - Punctuation -
public extension String {
    /// Appends a space.
    var space: String { return self + " " }
    /// Appends a full stop (`.`).
    var point: String { return self + "." }
    /// Appends a hyphen (`-`).
    var dash: String { return self + "-" }
    /// Appends a comma (`,`).
    var comma: String { return self + "," }
    /// Appends a semicolon (`;`).
    var semicolon: String { return self + ";" }
    /// Appends a colon (`:`).
    var colon: String { return self + ":" }
    /// Appends an apostrophe (`'`).
    var apostrophe: String { return self + "'" }
    /// Appends a double quotation mark (`"`).
    var quotation: String { return self + "\"" }
    /// Appends a plus sign (`+`).
    var plus: String { return self + "+" }
    /// Appends an equals sign (`=`).
    var equals: String { return self + "=" }
    /// Appends a left parenthesis (`(`).
    var paren_left: String { return self + "(" }
    /// Appends a right parenthesis (`)`).
    var paren_right: String { return self + ")" }
    /// Appends an asterisk (`*`).
    var asterisk: String { return self + "*" }
    /// Appends an ampersand (`&`).
    var ampersand: String { return self + "&" }
    /// Appends a caret (`^`).
    var caret: String { return self + "^" }
    /// Appends a percent sign (`%`).
    var percent: String { return self + "%" }
    /// Appends a dollar sign (`$`).
    var `$`: String { return self + "$" }
    /// Appends a number sign (`#`).
    var pound: String { return self + "#" }
    /// Appends an at sign (`@`).
    var at: String { return self + "@" }
    /// Appends an exclamation mark (`!`).
    var exclamation: String { return self + "!" }
    /// Appends a question mark (`?`).
    var question_mark: String { return self + "?" }
    /// Appends a backslash (`\`).
    var back_slash: String { return self + "\\" }
    /// Appends a forward slash (`/`).
    var forward_slash: String { return self + "/" }
    /// Appends a left curly brace (`{`).
    var curly_left: String { return self + "{" }
    /// Appends a right curly brace (`}`).
    var curly_right: String { return self + "}" }
    /// Appends a left square bracket (`[`).
    var bracket_left: String { return self + "[" }
    /// Appends a right square bracket (`]`).
    var bracket_right: String { return self + "]" }
    /// Appends a vertical bar (`|`).
    var bar: String { return self + "|" }
    /// Appends a less than sign (`<`).
    var less_than: String { return self + "<" }
    /// Appends a greater than sign (`>`).
    var greater_than: String { return self + ">" }
    /// Appends an underscore (`_`).
    var underscore: String { return self + "_" }
}

// MARK: - Aliases -
public extension String {
    /// Appends a full stop (`.`). An alias of ``point``.
    var dot: String { return point }
}

// swiftlint:enable identifier_name

