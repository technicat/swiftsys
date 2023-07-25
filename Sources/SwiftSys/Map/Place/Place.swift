//  Created by Philip Chu on 8/2/16.
//  Copyright © 2016 Technicat. All rights reserved.

public struct Place: Codable {
    public var name: String
    public var links: [Site]
    public var city: String
    public var coordinate: Coord
    public var address: String

    public init(name: String, links: [Site], city: String, coordinate: Coord, address: String) {
        self.name = name
        self.links = links
        self.city = city
        self.coordinate = coordinate
        self.address = address
    }
}
