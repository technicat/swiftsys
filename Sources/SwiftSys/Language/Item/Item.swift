//  Created by Philip Chu on 5/16/17.
//  Copyright © 2017 Technicat. All rights reserved.
#if os(macOS)
    import AppKit
#endif
#if os(iOS)
    import UIKit
#endif

public struct Postcard: Codable {
    public var image: String
    public var place: String
    
    public init(image: String, place: String) {
        self.image = image
        self.place = place
    }
}

public struct Item: Codable {

    public var word: Word

    public var imageFile: [Postcard]

    public var description: String

    public var tags: [String]

    public var resources: LinkList

    public init(word: Word,
                imageFile: [Postcard],
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
