//  Created by Philip Chu on 7/29/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

#if os(iOS)
    import MobileCoreServices
    import UniformTypeIdentifiers
    import SwiftUI

    public extension String {

        /// copy string to the clipboard
        func copy() {
            UIPasteboard.general.setValue(self,
                forPasteboardType:
                    UTType.plainText.identifier)
        }
    }
#endif
