//  Created by Philip Chu on 5/16/17.
//  Copyright © 2017 Technicat. All rights reserved.
#if os(macOS)
    import AppKit
#endif
#if os(iOS)
    import UIKit
#endif

public struct Scene: Codable {
    public var image: String
    public var place: String
}

public struct Item: Codable {

    public var word: Word

    public var imageFile: [Scene]

    public var description: String

    public var tags: [String]

    public var resources: LinkList

    public init(word: Word,
                imageFile: [Scene],
                description: String,
                tags: [String],
                resources: LinkList) {
        self.word = word
        self.imageFile = imageFile
        self.description = description
        self.tags = tags
        self.resources = resources
    }
}
