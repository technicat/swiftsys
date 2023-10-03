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

    private static let wiktRegex = Regex {
        "{"
        Capture(OneOrMore(.word))
        "}"
    }

    var expandedWikt: String {
        replacing(String.wiktRegex, with: { match in
            guard let site = Site(wkty: String(match.output.1)) else {
                return self
            }
            return site.markdown
        }
        )
    }

    var markdownWikt: AttributedString? {
        try? AttributedString(markdown: expandedWikt,
                              options: AttributedString.MarkdownParsingOptions(interpretedSyntax:
                                                                                .inlineOnlyPreservingWhitespace))
    }

}
