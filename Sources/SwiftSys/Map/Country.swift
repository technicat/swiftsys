//  Created by Philip Chu on 1/21/19.
//  Copyright © 2019 Technicat. All rights reserved.

public struct Country {
    public var name: String
    public var regions: [Region]

    public init(name: String, regions: [Region]) {
        self.name = name
        self.regions = regions
    }
}
