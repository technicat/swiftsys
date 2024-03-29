//
//  Created by Philip Chu on 3/10/23.
//

import SwiftUI

@available(macOS 10.15, *)
extension View {

  /// make the View round
  /// - Parameters
  ///     - radius: radius of the circle, should be half the width/height of the View
  @warn_unqualified_access
  public func round(_ radius: CGFloat) -> some View {
    self.roundedSquare(radius, width: radius * 2)
  }

  @warn_unqualified_access
  public func roundedSquare(_ radius: CGFloat = 0, width: CGFloat) -> some View {
    self.frame(width: width, height: width)
      .cornerRadius(radius)
  }

  @available(macOS 14, *)
  @available(iOS 17.0, *)
  @warn_unqualified_access
  public func panZoom() -> some View {
    PanZoomView { self }
  }
}
