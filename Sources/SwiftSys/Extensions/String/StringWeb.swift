//  Created by Philip Chu on 7/29/15.
//  Copyright (c) 2015 Technicat. All rights reserved.
//
#if !os(macOS)
    import UIKit

    public extension String {

        func openWeb() throws {
            if let url = URL(string: self) {
                UIApplication.shared.open(url)
            } else {
                if let url = URL(string: self.urlEncode()) {
                    UIApplication.shared.open(url)
                } else {
                    throw StringError.urlFail(self)
                }
            }
        }
    }
#endif
