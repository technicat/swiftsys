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
        Capture(OneOrMore(.word))
    }

    var bfTag: String {
        let matches = Set(matches(of: String.hashtagRegex).map { $0.output.1 })
        var res = self
        for match in matches {
            if !match.output.isEmpty {
                res = res.replacingOccurrences(of: "#\(match)",
                    with: "**#\(match)**")
            }
        }
        return res
    }

}
