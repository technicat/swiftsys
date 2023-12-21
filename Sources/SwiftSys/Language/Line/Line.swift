//  Created by Philip Chu on 12/19/18.
//  Copyright © 2018 Technicat. All rights reserved.

public struct Line: Identifiable, Codable {

  public var id: Int = 0
  public var name: String
  public var words: [Word]

  static var count: Int = 0

  public init(id: Int, name: String, words: [Word]) {
    self.id = id
    self.name = name
    self.words = words
  }

  enum CodingKeys: String, CodingKey {
    case name
    case words
  }

  public init(from decoder: Decoder) throws {
    self.id = Line.count
    Line.count += 1
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.name = try container.decode(String.self, forKey: .name)
    self.words = try container.decode([Word].self, forKey: .words)
  }
}
