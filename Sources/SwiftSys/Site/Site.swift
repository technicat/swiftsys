//  Created by Philip Chu on 12/10/16.
//  Copyright © 2016 Technicat. All rights reserved.

import Foundation

public struct Site {
    public var name: String
    public var url: URL

    public init(_ name: String, url: URL) {
        self.name = name
        self.url = url
    }

    public init?(_ name: String, url: String) {
        if let uurl = URL(string: url) {
            self.init(name, url: uurl)
        } else {
            return nil
        }
    }
}
