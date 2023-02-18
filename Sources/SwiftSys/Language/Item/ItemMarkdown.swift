//  Created by Philip Chu on 5/16/17.
//  Copyright © 2017 Technicat. All rights reserved.

import Foundation
import RegexBuilder

@available(macOS 13, *)
@available(iOS 16, *)
extension Item {

    // make lazy?

    public var markdown: AttributedString {
        (try? AttributedString(markdown: Item.processDesc(description),
                               options: AttributedString.MarkdownParsingOptions(interpretedSyntax:
                                    .inlineOnlyPreservingWhitespace)))
                                    ?? AttributedString()
    }

    private static let regex = Regex {
        "{"
        Capture(OneOrMore(.word))
        "}"

    }

    private static func processDesc(_ desc: String) -> String {
        let matches = Set(desc.matches(of: regex).map { $0.output.1 })
        var res = desc
        for match in matches {
            if let site = Site(wkty: String(match)) {
                res = res.replacingOccurrences(of: "{\(match)}",
                                               with: site.markdown)
            }
        }
        return res
    }

}
