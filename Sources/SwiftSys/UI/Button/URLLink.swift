//  Copyright © 2019 Technicat. All rights reserved.

import SwiftUI

@available(macOS 11.0, *)
public struct URLLink: View {
    public let url: String
    public let name: String
    
    public init(_ link: Dest) {
        self.init(url: link.url, name: link.name)
    }
    
    public init(url: String, name: String) {
        self.url = url
        self.name = name
    }

    public var body: some View {
        Link(destination: URL(string: url)!) {
            Label(name, systemImage: "link")
        }
    }
}

@available(macOS 11.0, *)
struct URLLink_Previews: PreviewProvider {
    static var previews: some View {
        URLLink(url: "http://technicat.com/", name: "Technicat")
    }
}

