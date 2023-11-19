import Foundation
import RegexBuilder

@available(macOS 13, *)
@available(iOS 16, *)
public extension String {

    // escape markdown that isn't intended to be markdown
    var escMarkdown: String {
        escUs.escUss.escStar.escStars
    }

    private static let starsRegex = Regex {
        "*\\*"
        Capture(OneOrMore(.word))
        "\\**"
    }

    private static let starRegex = Regex {
        "*"
        Capture(OneOrMore(.word))
        "*"
    }

    private static let ussRegex = Regex {
        "\\__"
        Capture(OneOrMore(.word))
        "_\\_"
    }

    private static let usRegex = Regex {
        "_"
        Capture(OneOrMore(.word))
        "_"
    }

    private var escStars: String {
        replacing(String.starsRegex, with: { match in "\\*\\*\(match.output.1)\\*\\*" })
    }

    private var escStar: String {
        replacing(String.starRegex, with: { match in "\\*\(match.output.1)\\*" })
    }

    private var escUss: String {
        replacing(String.ussRegex, with: { match in "\\_\\_\(match.output.1)\\_\\_" })
    }

    private var escUs: String {
        replacing(String.usRegex, with: { match in "\\_\(match.output.1)\\_" })
    }
}
