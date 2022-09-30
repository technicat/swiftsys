//  Created by Philip Chu on 7/29/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

#if os(iOS)
    import UIKit
#endif
#if os(macOS)
    import Foundation
#endif

public extension String {

    func openWeb() throws {
        if let url = URL(string: self) {
            url.open()
        } else {
            if let url = try? URL(string: self.urlEncode()) {
                url.open()
            } else {
                throw StringError.urlFail(self)
            }
        }
    }
}