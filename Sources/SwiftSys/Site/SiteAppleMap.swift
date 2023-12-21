//  Created by Philip Chu on 12/10/16.
//  Copyright © 2016 Technicat. All rights reserved.

import Foundation
import MapKit

extension Site {

  /// create a link to Apple Maps centered on this coordinate
  public init?(amap loc: CLLocationCoordinate2D) {
    let url = "http://maps.apple.com/?ll=\(loc.latitude),\(loc.longitude)"
    self.init("Apple Maps", url: url)
  }
}
