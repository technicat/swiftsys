//  Created by Philip Chu on 7/29/15.
//  Copyright (c) 2015 Technicat. All rights reserved.
//

import UIKit

extension String {
    public func openWeb() {
        if let url = URL(string: self) {
            UIApplication.shared.open(url)
        } else {
            guard let new = addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
                //Sys.log.error("Unable to urlencode \(self)")
                return
            }
            if let url = URL(string: new) {
                UIApplication.shared.open(url)
            }
        }
    }
}
