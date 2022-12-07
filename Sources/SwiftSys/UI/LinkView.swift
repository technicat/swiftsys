//  Copyright © 2019 Technicat. All rights reserved.

import SwiftUI

@available(macOS 11.0, *)
public struct LinkView: View {

    public let url: URL
    public let name: String
    public let image: String // system image

    public init(_ url: URL, name: String, image: String = "link") {
        self.url = url
        self.name = name
        self.image = image
    }

    public init(_ link: Site, image: String = "link") {
        self.init(link.url, name: link.name, image: image)
    }

    public init(_ url: String, name: String, image: String = "link") {
        self.init(URL(string: url)!, name: name, image: image)
    }

    public var body: some View {
        Link(destination: url) {
            Label(name, systemImage: image)
        }
    }
}

@available(macOS 11.0, *)
struct URLLink_Previews: PreviewProvider {
    static var previews: some View {
        LinkView("http://technicat.com/", name: "Technicat")
    }
}
