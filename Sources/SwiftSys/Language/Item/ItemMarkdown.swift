//  Created by Philip Chu on 5/16/17.
//  Copyright © 2017 Technicat. All rights reserved.

import Foundation

@available(macOS 13, *)
@available(iOS 16, *)
extension Item {

    public var markdown: AttributedString {
        let full = description + 
                    "\n\n**Characters**\n\n"
                    + word.description
        return full.markdown ?? AttributedString()
    }

}
