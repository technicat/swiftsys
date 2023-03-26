import Foundation
import SwiftUI

/// Cancel button for use in a sheet or popover
@available(macOS 12.0, *)
public struct CancelButton: View {

    @Environment(\.dismiss) private var dismiss

    public var body: some View {

        SheetButton("Cancel",
            sysImage: "hand.thumbsdown") {
            
        }
    }
}
