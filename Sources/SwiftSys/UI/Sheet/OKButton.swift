import Foundation
import SwiftUI

/// OK button for use in a sheet or popover
@available(macOS 12.0, *)
public struct OKButton: View {

    @Environment(\.dismiss) private var dismiss
    
    let action: ()->Void

    public var body: some View {

        SheetButton("OK",
            sysImage: "hand.thumbsup") {
            action()
        }
    }
}
