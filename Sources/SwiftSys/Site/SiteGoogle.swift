//  Created by Philip Chu on 12/10/16.
//  Copyright © 2016 Technicat. All rights reserved.

import Foundation

extension Site {

    public init? (lat: Double, lon: Double) {
    let url = "https://www.google.com/maps/@?api=1&map_action=map&center=\(lat)%2C\(lon)"
        self.init("google maps", url: url)
    }
}
