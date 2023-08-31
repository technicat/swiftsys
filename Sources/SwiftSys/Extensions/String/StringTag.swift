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

    private static let hashtagRegex = Regex {
        "#"
        OneOrMore(.word)
    }

    var bfTag: String {
        replacing(String.hashtagRegex, with: { match in "**\(match.output)**" })
    }

}
