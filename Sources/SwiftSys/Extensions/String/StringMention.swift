//
//  Created by Philip Chu on 4/12/23.
//

import Foundation
import RegexBuilder

@available(macOS 13, *)
@available(iOS 16, *)
public extension String {
    
    var bfMention: String {
        replacing(String.mentionRegex, with: { match in "\(match.output.1)**\(match.output.2)**" })
    }

    private static let mentionRegex = Regex {
        Capture {
            ChoiceOf {
                Anchor.startOfLine
                One(.whitespace)
            }
        }
        Capture {
            "@"
            OneOrMore(.word)
        }
    }

}
