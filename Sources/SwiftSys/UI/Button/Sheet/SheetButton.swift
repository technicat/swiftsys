import Foundation
import SwiftUI

/// Button for use in a sheet or popover
@available(iOS 15.0, *)
@available(macOS 12.0, *)
public struct SheetButton: View {

    @Environment(\.dismiss) private var dismiss

    let text: String
    let sysImage: String
    let localize: Bool
    let action: () -> Void

    public init(_ text: String, sysImage: String, localize: Bool = true, action: @escaping () -> Void) {
        self.text = text
        self.sysImage = sysImage
        self.localize = localize
        self.action = action
    }

    public var body: some View {

        ActionButton(text, sysImage) {
            action()
            dismiss()
        }
    }
}
