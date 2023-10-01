//
//  RouteButton.swift
//  
//
//  Created by Philip Chu on 10/1/23.
//

import Foundation
import SwiftUI
import TipKit

@available(macOS 14.0, *)
@available(iOS 17.0, *)
public struct RouteButton<T: Equatable>: View {

    @EnvironmentObject var router: Router<T>

    let title: String
    let image: String
    let route: T
    let tip: (any Tip)?

    public init(title: String, image: String, route: T, tip: (any Tip)? = nil) {
        self.title = title
        self.image = image
        self.route = route
        self.tip = tip
    }

    public var body: some View {
        ActionButton(title, image) {
            if let tip {
                tip.invalidate(reason: .actionPerformed)
            }
            router.pushNew(route)
        }
    }
}
