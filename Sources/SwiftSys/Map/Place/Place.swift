//  Created by Philip Chu on 8/2/16.
//  Copyright © 2016 Technicat. All rights reserved.

public struct Place: Decodable {
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

    enum CodingKeys: String, CodingKey {
        case name
        case links
        case city
        case lat
        case lon
        case address
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.links = try container.decode([Site].self, forKey: .links)
        self.city = try container.decode(String.self, forKey: .city)
        self.address = try container.decode(String.self, forKey: .address)

        let lat = try container.decode(Double.self, forKey: .lat)
        let lon = try container.decode(Double.self, forKey: .lon)

        self.coordinate = Coord(lat: lat, lon: lon)
    }
}
