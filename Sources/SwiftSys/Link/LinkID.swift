//  Created by Philip Chu on 12/10/16.
//  Copyright © 2016 Technicat. All rights reserved.

import Foundation

extension Link: Identifiable {
    public var id: String {
        url
    }
}
