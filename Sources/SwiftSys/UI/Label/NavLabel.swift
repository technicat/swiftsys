//
//  Created by Philip Chu on 4/30/23.
//

import Foundation
import SwiftUI

@available(macOS 13.0, *)
@available(iOS 16.0, *)
public struct NavLabel: View {

    let title: String
    let image: String
    let dest: any Hashable

    public init(_ title: String, _ image: String, _ dest: any Hashable) {
        self.title = title
        self.image = image
        self.dest = dest
    }

    public var body: some View {
        NavigationLink(value: dest) {
            LLabel(title, image)
        }
    }
}
