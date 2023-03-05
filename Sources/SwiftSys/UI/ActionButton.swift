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
    let text: String
    let sysImage: String
    let action: () -> Void
    
    public var body: some View {
        Button {
            #if os(iOS)
            Rumble.softly()
            #endif
            action()
        }
        label: {
            Label(text, systemImage: sysImage)
        }
    }
}
