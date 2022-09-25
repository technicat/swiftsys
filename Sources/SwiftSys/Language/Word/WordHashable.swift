//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

extension Word: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    public static var words: [String: Word] = Dictionary()

    public static func add(_ word: Word) {
        words[word.id] = word
    }
}

public func == (lhs: Word, rhs: Word) -> Bool {
    lhs.id == rhs.id
}
