//  Created by Philip Chu on 7/29/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

#if os(iOS)
    import UIKit
#endif
#if os(macOS)
    import AppKit
#endif

public extension URL {
    // should check canOpenURL
    func open() {
        #if os(macOS)
        NSWorkspace.shared.open(self)
        #endif
        #if os(iOS)
            UIApplication.shared.open(self)
        #endif
    }
}
