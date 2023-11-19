//
//  Created by Philip Chu on 3/5/23.
//

import SwiftUI

/// button that always has a Label with text and an (system) image
/// (image should probably be optional
/// alternatively user-supplied
/// control appearance with a button style
/// e.g. IconOnlyButtonStyle
/// rumbles (should be optional)
@available(iOS 15.0, *)
@available(macOS 12.0, *)
public struct ActionButton: View {
    let text: String
    let sysImage: String
    let localize: Bool
    let action: () -> Void
    let role: ButtonRole?

    public init(_ text: String,
                _ sysImage: String,
                localize: Bool = true,
                role: ButtonRole? = nil,
                action: @escaping () -> Void) {
        self.text = text
        self.sysImage = sysImage
        self.localize = localize
        self.action = action
        self.role = role
    }

    public var body: some View {

        Button(role: role) {
            #if os(iOS)
            Rumble.softly()
            #endif
            action()
        }
        label: {
            if localize {
                LLabel(text, sysImage)
            } else {
                Label(text, systemImage: sysImage)
            }
        }
    }
}
