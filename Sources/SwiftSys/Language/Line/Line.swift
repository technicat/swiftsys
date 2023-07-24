//  Created by Philip Chu on 12/19/18.
//  Copyright © 2018 Technicat. All rights reserved.

public struct Line: Identifiable, Codable {

    public var id: Int = 0
    public var name: String
    public var words: [Word]

    public init(id: Int, name: String, words: [Word]) {
        self.id = id
        self.name = name
        self.words = words
    }
}
