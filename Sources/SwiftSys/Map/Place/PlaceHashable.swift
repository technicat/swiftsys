//  Created by Philip Chu on 8/2/16.
//  Copyright © 2016 Technicat. All rights reserved.

extension Place: Hashable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
