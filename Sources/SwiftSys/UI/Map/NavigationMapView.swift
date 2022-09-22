//  Created by Philip Chu on 9/26/19.
//  Copyright © 2019 Technicat. All rights reserved.

import MapKit
import SwiftUI

@available(macOS 11.0, *)
public struct NavigationMapView: View {
    let region: Region

    @State private var cregion = MKCoordinateRegion()

    public init(region: Region, place: Place) {
        self.region = region
        _cregion = .init(initialValue:
            MKCoordinateRegion(center: place.coordinate,
                               span: MKCoordinateSpan(latitudeDelta: 0.005,
                                                      longitudeDelta: 0.005)))
    }

    public var body: some View {
        Map(coordinateRegion: $cregion,
            showsUserLocation: true,
            annotationItems: region.places,
            annotationContent: { place in
                MapAnnotation(
                    coordinate: place.coordinate,
                    anchorPoint: CGPoint(x: 0.5, y: 0.5)
                ) {
                    MapMarker(place: place)
                }
            })
    }
}
