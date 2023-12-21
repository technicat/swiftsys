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
  public var place: String?

  public init(image: String, place: String) {
    self.image = image
    self.place = place
  }
}

public struct Item: Codable {

  public var word: Word

  public var images: [Postcard]

  public var description: String

  public var tags: [String]?

  public var resources: [Site]

  public init(
    word: Word,
    images: [Postcard],
    description: String,
    tags: [String],
    resources: [Site]
  ) {
    self.word = word
    self.images = images
    self.description = description
    self.tags = tags
    self.resources = resources
  }
}
