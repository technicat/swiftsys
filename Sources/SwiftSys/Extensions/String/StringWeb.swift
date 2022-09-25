//  Created by Philip Chu on 7/29/15.
//  Copyright (c) 2015 Technicat. All rights reserved.
//
#if !os(macOS)
    import UIKit
//#else
 //   import Foundation
//#endif

    public extension String {

        func openWeb() throws {
            // should check canOpenURL
            if let url = URL(string: self) {
                UIApplication.shared.open(url)
            } else {
                if let url = try? URL(string: self.urlEncode()) {
                    UIApplication.shared.open(url)
                } else {
                    throw StringError.urlFail(self)
                }
            }
        }
    }
#endif
