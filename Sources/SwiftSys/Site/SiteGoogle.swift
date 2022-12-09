//  Created by Philip Chu on 12/10/16.
//  Copyright © 2016 Technicat. All rights reserved.

import Foundation
import MapKit

extension Site {

    public init? (gmap: CLLocationCoordinate2D) {
        let url = "https://www.google.com/maps/@?api=1&map_action=map&center=\(gmap.latitude)%2C\(gmap.longitude)"
        self.init("google maps", url: url)
    }
}
