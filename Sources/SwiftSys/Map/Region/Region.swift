//  Created by Philip Chu on 1/21/19.
//  Copyright © 2019 Technicat. All rights reserved.

public struct Region: Codable {
    public var name: String
    public var places: [Place]

    public init(name: String, places: [Place]) {
        self.name = name
        self.places = places
    }
}
