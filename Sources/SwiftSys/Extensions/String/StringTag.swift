import Foundation
import RegexBuilder

@available(macOS 13, *)
@available(iOS 16, *)
public extension String {

// compare with regex in
// https://github.com/Gargron/mastodon/blob/master/app/models/tag.rb

    private static let hashtagRegex = Regex {
        Capture {
            ChoiceOf {
                Anchor.startOfLine
                One(.whitespace)
            }
        }
        Capture {
            "#"
            OneOrMore(.word)
        }
    }
        .anchorsMatchLineEndings()
        .wordBoundaryKind(.default)

    var bfTag: String {
        replacing(String.hashtagRegex, with: { match in "\(match.output.1)**\(match.output.2)**" })
    }

}
