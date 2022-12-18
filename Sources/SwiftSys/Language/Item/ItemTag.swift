//  Created by Philip Chu on 5/16/17.
//  Copyright © 2017 Technicat. All rights reserved.

extension Item {

    public func isTag(_ word: Word) -> Bool {
        tags.contains(word.id)
    }
}
