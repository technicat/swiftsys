//  Created by Philip Chu on 12/10/16.
//  Copyright © 2016 Technicat. All rights reserved.

import Foundation

public struct Site {
    public var name: String
    public var url: URL

    public init(name: String, url: URL) {
        self.name = name
        self.url = url
    }
    
    // should throw, probably
    public init(name: String, dest: String) {
        self.name = name
        self.url = URL(string: dest)!
    }
}
