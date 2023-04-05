//
//  File.swift
//  
//
//  Created by Philip Chu on 4/2/23.
//

import Foundation
import SwiftUI

/// row of Cancel and OK buttons
/// typically used at the bottom of a popover/sheet
@available(iOS 15.0, *)
@available(macOS 12.0, *)
public struct OKCancelButtons: View {

    let action: () -> Void

    public init(action: @escaping () -> Void) {
        self.action = action
    }

    public var body: some View {

        HStack {
            CancelButton()
            Spacer()
            OKButton {
                action()
            }
        }
    }
}
