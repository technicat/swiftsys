import Foundation
import SwiftUI

/// Cancel button for use in a sheet or popover
@available(iOS 15.0, *)
@available(macOS 12.0, *)
public struct CancelButton: View {

    @Environment(\.dismiss) private var dismiss
    
    public init() {
    }

    public var body: some View {

        SheetButton("Cancel",
            sysImage: "hand.thumbsdown") {
            
        }
    }
}