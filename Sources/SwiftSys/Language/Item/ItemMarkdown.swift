//  Created by Philip Chu on 5/16/17.
//  Copyright © 2017 Technicat. All rights reserved.

import Foundation
import RegexBuilder

extension Item {
    
    @available(macOS 12, *)
    @available(iOS 15, *)
    public var markdown: AttributedString {
        (try? AttributedString(markdown: description,
                               options: AttributedString.MarkdownParsingOptions(interpretedSyntax: 
                                    .inlineOnlyPreservingWhitespace)))
                                    ?? AttributedString()
    }
    
    @available(macOS 13, *)
    @available(iOS 16, *)
    private static let regex = Regex {
        "{"
        Capture(OneOrMore(.word))
        "}"

    }
}
