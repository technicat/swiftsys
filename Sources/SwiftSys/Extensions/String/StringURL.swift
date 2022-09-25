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
                let url = self.urlEncode
                UIApplication.shared.open(url)
            }
        }

        var urlEncode: String {
            guard let new = addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
                throw StringError.urlEncodeFail(self)
            }
            return new
        }
    }
#endif
