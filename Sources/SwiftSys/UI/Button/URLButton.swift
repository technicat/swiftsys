//  Created by Philip Chu on 10/22/19.
//  Copyright © 2019 Technicat. All rights reserved.

import SwiftUI

@available(macOS 11.0, *)
public struct URLButton: View {
    public let url: String
    public let name: String
    
    public init(link: Link) {
        self.init(url: link.url, name: link.name)
    }
    
    public init(url: String, name: String) {
        self.url = url
        self.name = name
    }

    public var body: some View {
        Button(action: { try? url.openWeb() },
               label: {
                   Label(name, systemImage: "link")
               })
    }
}

