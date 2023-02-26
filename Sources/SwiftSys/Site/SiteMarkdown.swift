//  Created by Philip Chu on 12/10/16.
//  Copyright © 2016 Technicat. All rights reserved.

import Foundation

extension Site: Identifiable {

    /// markdown output of this link
    public var markdown: String {
        "[\(name)](\(url))"
    }
}
