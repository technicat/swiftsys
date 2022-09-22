//  Created by Philip Chu on 8/2/16.
//  Copyright © 2016 Technicat. All rights reserved.

import MapKit
import SwiftSys

public struct Place {
    public var name: String
    public var links: LinkList
    public var city: String
    public var coordinate: CLLocationCoordinate2D
    public var address: String

    public init(name: String, links: LinkList, city: String, coordinate: CLLocationCoordinate2D, address: String) {
        self.name = name
        self.links = links
        self.city = city
        self.coordinate = coordinate
        self.address = address
    }
}
