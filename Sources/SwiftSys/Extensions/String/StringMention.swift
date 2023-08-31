//
//  File.swift
//
//
//  Created by Philip Chu on 4/12/23.
//

import Foundation
import RegexBuilder

@available(macOS 13, *)
@available(iOS 16, *)
public extension String {

    private static let mentionRegex = Regex {
        "@"
        OneOrMore(.word)
    }

    var bfMention: String {
        replacing(String.mentionRegex, with: { match in "**\(match.output)**" })
    }

}
