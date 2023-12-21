//  Created by Philip Chu on 12/10/16.
//  Copyright © 2016 Technicat. All rights reserved.

import Foundation
import MapKit

extension Site {

  /// create a link to Google Maps centered on a coordinate
  public init?(gmap loc: CLLocationCoordinate2D) {
    let url =
      "https://www.google.com/maps/@?api=1&map_action=map&center=\(loc.latitude)%2C\(loc.longitude)"
    self.init("Google Maps", url: url)
  }
}
