//  Created by Philip Chu on 8/2/16.
//  Copyright © 2016 Technicat. All rights reserved.

import MapKit

public struct Coord: Codable {
    
    public var lat: Double
    public var lon: Double
    
    public init(lat: Double, lon: Double) {
        self.lat = lat
        self.lon = lon
    }
    
    public var mapCoord: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: lat, longitude: lon)
    }
}
