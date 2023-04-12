//  Created by Philip Chu on 5/16/17.
//  Copyright © 2017 Technicat. All rights reserved.

import Foundation

@available(macOS 13, *)
@available(iOS 16, *)
extension Item {

    public var markdown: AttributedString {
        (try? AttributedString(markdown: description.expandedWikt,
                               options: AttributedString.MarkdownParsingOptions(interpretedSyntax:
                                    .inlineOnlyPreservingWhitespace)))
                                    ?? AttributedString()
    }

}
