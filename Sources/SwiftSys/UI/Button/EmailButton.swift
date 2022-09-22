//  Created by Philip Chu on 10/22/19.
//  Copyright © 2019 Technicat. All rights reserved.

#if !os(macOS)
import SwiftUI

public struct EmailButton: View {
    public let url: String // todo - prepend "mailto:"
    public let name: String
    
    public init(link: Link) {
        self.init(url: link.url, name: link.name)
    }
    
    public init(url: String, name: String) {
        self.url = url
        self.name = name
    }

    public var body: some View {
        Button(action: { url.openWeb() },
               label: {
                   Label(name, systemImage: "mail")
               })
    }
}
#endif
