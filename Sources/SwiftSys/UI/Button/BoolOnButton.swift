//
//  Created by Philip Chu on 4/30/23.
//

import Foundation
import SwiftUI

/// Button that turns on a bool binding
/// Typically used for activating sheets
@available(iOS 15.0, *)
@available(macOS 12.0, *)
public struct BoolOnButton: View {

    let title: String
    let image: String
    let role: ButtonRole?

    @Binding var sheet: Bool

    public init(_ title: String, _ image: String,
                role: ButtonRole? = nil,
                _ sheet: Binding<Bool>) {
        self.title = title
        self.image = image
        self.role = role
        _sheet = sheet
    }

    public var body: some View {
        ActionButton(title, image, role: role) {
            sheet = true
        }
    }
}
