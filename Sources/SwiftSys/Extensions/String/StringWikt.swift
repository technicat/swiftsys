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
extension String {

    private static let wiktRegex = Regex {
        "{"
        Capture(OneOrMore(.word))
        "}"

    }

    public var expandedWikt: String {
        let matches = Set(matches(of: String.wiktRegex).map { $0.output.1 })
        var res = self
        for match in matches {
            if let site = Site(wkty: String(match)) {
                res = res.replacingOccurrences(of: "{\(match)}",
                    with: site.markdown)
            }
        }
        return res
    }

    public var markdown: AttributedString? {
        try? AttributedString(markdown: expandedWikt,
            options: AttributedString.MarkdownParsingOptions(interpretedSyntax:
                    .inlineOnlyPreservingWhitespace))
    }

}
