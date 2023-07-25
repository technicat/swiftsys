//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

/// characters accompanied by a list of explanatory (dictionary, wiktionary) links
public struct Characters: Codable {
    public var text: String
    public var refs: [Site]

    public init(_ text: String, refs: [Site] = []) {
        self.text = text
        self.refs = refs
    }
}
