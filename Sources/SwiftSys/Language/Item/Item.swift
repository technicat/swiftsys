//  Created by Philip Chu on 5/16/17.
//  Copyright © 2017 Technicat. All rights reserved.
#if os(macOS)
    import AppKit
#endif
#if os(iOS)
    import UIKit
#endif

public typealias ImageList = [(image: String, place: String)]

public struct Item {

    public var word: Word

    public var imageFile: ImageList

    public var description: String

    public var tags: [String]

    public var resources: LinkList

    // just so we can make it public
    public init(word: Word, imageFile: ImageList, description: String, tags: [String], resources: LinkList) {
        self.word = word
        self.imageFile = imageFile
        self.description = description
        self.tags = tags
        self.resources = resources
    }
}
