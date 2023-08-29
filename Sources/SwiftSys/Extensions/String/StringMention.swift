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
        Capture(OneOrMore(.word))
    }

    var bfMention: String {
        let matches = Set(matches(of: String.mentionRegex).map { $0.output.1 })
        var res = self
        for match in matches {
            if !match.isEmpty {
                res = res.replacingOccurrences(of: "@\(match)",
                    with: "**@\(match)**")
            }
        }
        return res
    }

}
