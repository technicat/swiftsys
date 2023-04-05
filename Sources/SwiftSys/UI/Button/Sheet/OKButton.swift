import Foundation
import SwiftUI

/// OK button for use in a sheet or popover
@available(iOS 15.0, *)
@available(macOS 12.0, *)
public struct OKButton: View {

    let action: () -> Void

    public init(action: @escaping () -> Void) {
        self.action = action
    }

    public var body: some View {

        SheetButton("OK",
            sysImage: "hand.thumbsup") {
            action()
        }
    }
}
