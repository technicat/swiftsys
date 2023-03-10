//
//  Created by Philip Chu on 3/10/23.
//

import SwiftUI

@available(macOS 10.15, *)
public extension View {

    /// make the View round, equivalent to applying a corner radius of half the width/height
    /// (assumes the View is square, otherwise will result in a capsule
    /// - Parameters
    ///     - radius: radius of the circle, should be half the width/height of the View
    func round(_ radius: CGFloat) -> some View {
        self.frame(width: radius*2, height: radius*2)
        .cornerRadius(radius)
    }
}
