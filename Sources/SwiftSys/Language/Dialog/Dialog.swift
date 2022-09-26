//  Created by Philip Chu on 12/19/18.
//  Copyright © 2018 Technicat. All rights reserved.

public struct Dialog {
    public var name: String
    public var lines: [Line] = []

    public init(name: String, lines: [Line]) {
        self.name = name
        self.lines = lines
    }
}
