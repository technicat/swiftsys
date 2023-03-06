//
//  File.swift
//  
//
//  Created by Philip Chu on 3/5/23.
//

import SwiftUI

/// button that always has a Label with text and an (system) image
/// (image should probably be optional
/// alternatively user-supplied
/// control appearance with a button style
/// e.g. IconOnlyButtonStyle
@available(macOS 11.0, *)
public struct ActionButton: View {
    public let text: String
    public let sysImage: String
    public let action: () -> Void
    
    public init(_ text: String, sysImage: String, action: @escaping () -> Void) {
        self.text = text
        self.sysImage = sysImage
        self.action = action
    }
    
    public var body: some View {
        Button {
            #if os(iOS)
            Rumble.softly()
            #endif
            action()
        }
        label: {
            Label(LocalizedStringKey(text), systemImage: sysImage)
        }
    }
}
