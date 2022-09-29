//  Copyright © 2019 Technicat. All rights reserved.

import SwiftUI

@available(macOS 11.0, *)
public struct EmailButton: View {
    public let url: String // todo - prepend "mailto:"
    public let name: String

    public init(_ link: Link) {
        self.init(url: link.url, name: link.name)
    }

    public init(url: String, name: String) {
        self.url = url
        self.name = name
    }

    public var body: some View {
        Button(action: { try? url.openWeb() },
            label: {
                Label(name, systemImage: "mail")
            })
    }
}

@available(macOS 11.0, *)
struct EmailButton_Previews: PreviewProvider {
    static var previews: some View {
        EmailButton(url: "mailto:noone@technicat.com", name: "Don't spam me")
    }
}

