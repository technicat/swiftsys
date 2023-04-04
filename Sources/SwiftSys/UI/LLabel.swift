//
//  Created by Philip Chu on 4/4/23.
//

import SwiftUI

@available(macOS 11, *)
public struct LLabel: View {

    let title: String
    let sysImage: String

    public init (_ title: String, sysImage: String) {
        self.title = title
        self.sysImage = sysImage
    }

    public var body: some View {
        Label(LocalizedStringKey(title),
            systemImage: sysImage)
    }
}

