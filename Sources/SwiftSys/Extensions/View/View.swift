//
//  Created by Philip Chu on 3/10/23.
//

import SwiftUI

@available(macOS 10.15, *)
public extension View {

    /// make the View round
    /// - Parameters
    ///     - radius: radius of the circle, should be half the width/height of the View
    func round(_ radius: CGFloat) -> some View {
        self.roundedSquare(radius, width: radius*2)
    }
    
    func roundedSquare(_ radius: CGFloat, width: CGFloat) -> some View {
        self.frame(width: width, height: width)
        .cornerRadius(radius)
    }
}
