//  Created by Philip Chu on 5/16/17.
//  Copyright © 2017 Technicat. All rights reserved.

extension Item: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
