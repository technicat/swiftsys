//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

/// characters accompanied by a list of explanatory (dictionary, wiktionary) links
public struct Characters {
    public var text: String
    public var refs: LinkList

    public init(_ text: String, refs: LinkList = []) {
        self.text = text
        self.refs = refs
    }
}
