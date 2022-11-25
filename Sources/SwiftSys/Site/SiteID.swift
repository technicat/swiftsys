//  Created by Philip Chu on 12/10/16.
//  Copyright © 2016 Technicat. All rights reserved.

import Foundation

extension Site {

    public init? (wkty chars: String) {
        guard let url = try? "https://en.wiktionary.org/wiki/\(chars)".urlEncode() else {
            return nil
        }
        self.init(name: chars,
            dest: url)
    }
}
