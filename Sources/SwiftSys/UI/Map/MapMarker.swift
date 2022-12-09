//  Created by Philip Chu on 9/26/19.
//  Copyright © 2019 Technicat. All rights reserved.

import MapKit
import SwiftUI

@available(macOS 11.0, *)
public struct MapMarker: View {

    let place: Place

    public var body: some View {
        VStack {
            Image(systemName: "mappin")
                .imageScale(.large)
                .foregroundColor(.red)
            Text(place.name)
                .font(.callout)
                .foregroundColor(.red)
        }
    }
}

@available(macOS 11.0, *)
struct MapMarker_Previews: PreviewProvider {
    static var previews: some View {
        MapMarker(place: Place(name: "nowhere",
                               links: [],
                               city: "somecity",
                               coordinate: CLLocationCoordinate2D(),
                               address: "return to sender"))
    }
}
