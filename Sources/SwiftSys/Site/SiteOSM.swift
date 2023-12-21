//  Created by Philip Chu on 12/10/16.
//  Copyright © 2016 Technicat. All rights reserved.

import Foundation
import MapKit

extension Site {

  /// link to OpenStreetMaps
  public init?(osm loc: CLLocationCoordinate2D) {
    let url = "https://www.openstreetmap.org/#map=15/\(loc.latitude)/\(loc.longitude)"
    self.init("OpenStreetMaps", url: url)
  }
}
