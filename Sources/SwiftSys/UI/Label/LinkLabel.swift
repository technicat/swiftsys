//  Copyright © 2019 Technicat. All rights reserved.

import SwiftUI

/// a Label for a Link
@available(macOS 11.0, *)
public struct LinkLabel: View {

    let url: URL
    let name: String
    let sysImage: String

    /// Create a LinkLabel from a URL
    ///
    /// - Parameters
    ///     - url: the URL to link to
    ///     - name: the label text
    ///     - sysImage: name of the system image in the label (browse Apple's SF Symbols app)
    ///
    public init(_ url: URL, name: String, sysImage: String = "link") {
        self.url = url
        self.name = name
        self.sysImage = sysImage
    }

    public init(_ link: Site, sysImage: String = "link") {
        self.init(link.url, name: link.name, sysImage: sysImage)
    }

    /// Create a LinkLabel from a string URL
    ///
    /// - Parameters
    ///     - url: the string URL to link to
    ///     - name: the label text
    ///     - sysImage: name of the system image in the label (browse Apple's SF Symbols app)
    ///
    public init?(_ url: String, name: String, sysImage: String = "link") {
        guard let realURL = try? url.url() else {
            return nil
        }
        self.init(realURL, name: name, sysImage: sysImage)
    }

    public var body: some View {
        Link(destination: url) {
            LLabel(name, sysImage)
        }
    }
}
