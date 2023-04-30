//
//  Created by Philip Chu on 4/30/23.
//

import Foundation
import SwiftUI

/// Button that turns on a bool binding
/// Typically used for activating sheets
@available(macOS 11.0, *)
public struct BoolOnButton: View {
    
    let title: String
    let image: String
    
    @Binding var sheet: Bool
    
    public init(_ title: String, _ image: String, _ sheet: Binding<Bool>) {
        self.title = title
        self.image = image
        _sheet = sheet
    }

    public var body:  some View {
        ActionButton(title,
                     sysImage: image) {
            sheet = true
        }
    }
}
