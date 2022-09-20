//  Created by Philip Chu on 10/22/19.
//  Copyright © 2019 Technicat. All rights reserved.

#if !os(macOS)
import SwiftUI

public struct URLButton: View {
    public let url: String
    public let name: String

    public var body: some View {
        Button(action: { url.openWeb() },
               label: {
                   Label(name, systemImage: "link")
               })
    }
}
#endif
