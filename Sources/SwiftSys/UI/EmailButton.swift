//  Created by Philip Chu on 10/22/19.
//  Copyright © 2019 Technicat. All rights reserved.

#if !os(macOS)
import SwiftUI

struct EmailButton: View {
    let url: String // todo - prepend "mailto:"
    let name: String

    var body: some View {
        Button(action: { url.openWeb() },
               label: {
                   Label(name, systemImage: "mail")
               })
    }
}
#endif
