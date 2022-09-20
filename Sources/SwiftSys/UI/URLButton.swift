//  Created by Philip Chu on 10/22/19.
//  Copyright © 2019 Technicat. All rights reserved.

#if !os(macOS)
import SwiftUI

public struct URLButton: View {
    let url: String
    let name: String

    var body: some View {
        Button(action: { url.openWeb() },
               label: {
                   Label(name, systemImage: "link")
               })
    }
}
#endif
