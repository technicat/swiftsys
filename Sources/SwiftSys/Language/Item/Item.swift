//  Created by Philip Chu on 5/16/17.
//  Copyright © 2017 Technicat. All rights reserved.
#if !os(macOS)
import UIKit

public typealias ImageList = [(image: String, place: String)]

public struct Item {
    public var word: Word {
        words[0]
    }

    public var words: [Word]

    public var imageFile: ImageList

    public var description: String

    public var tags: [String]

    public var resources: LinkList

    // just so we can make it public
    public init(words: [Word], imageFile: ImageList, description: String, tags: [String], resources: LinkList) {
        self.words = words
        self.imageFile = imageFile
        self.description = description
        self.tags = tags
        self.resources = resources
    }

    public func isTag(_ word: Word) -> Bool {
        tags.contains(word.id)
    }
    
    @available(iOS 15, *)
    public var markdown: AttributedString {
        (try? AttributedString(markdown: description, options: AttributedString.MarkdownParsingOptions(interpretedSyntax: .inlineOnlyPreservingWhitespace))) ?? AttributedString()
    }
}

#endif
