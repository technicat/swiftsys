//  Created by Philip Chu on 10/22/19.
//  Copyright © 2019 Technicat. All rights reserved.

#if !os(macOS)
import SwiftUI

public struct LinkView: View {
    public let link: Link

    public var body: some View {
        URLButton(url: link.url, name: link.name)
    }
}
#endif
