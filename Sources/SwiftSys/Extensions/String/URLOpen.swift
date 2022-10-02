//  Created by Philip Chu on 7/29/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

#if os(iOS)
    import UIKit
#endif
#if os(macOS)
    import AppKit
#endif

public extension URL {
    func open() throws {
        #if os(macOS)
        if !NSWorkspace.shared.open(self) {
            throw StringError.urlOpenFail(self)
        }
        #endif
        #if os(iOS)
        // should first check canOpenURL
        if !UIApplication.shared.open(self) {
            throw StringError.urlOpenFail(self)
        }
        #endif
    }
}
