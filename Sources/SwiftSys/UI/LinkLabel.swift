//  Copyright © 2019 Technicat. All rights reserved.

import SwiftUI

@available(macOS 11.0, *)
public struct LinkLabel: View {

    public let url: URL
    public let name: String
    public let sysImage: String // system image

    public init(_ url: URL, name: String, sysImage: String = "link") {
        self.url = url
        self.name = name
        self.sysImage = sysImage
    }

    public init(_ link: Site, sysImage: String = "link") {
        self.init(link.url, name: link.name, sysImage: sysImage)
    }

    public init(_ url: String, name: String, sysImage: String = "link") {
        self.init(URL(string: url)!, name: name, sysImage: sysImage)
    }

    public var body: some View {
        Link(destination: url) {
            Label(name, systemImage: sysImage)
        }
    }
}
