//  Created by Philip Chu on 8/2/16.
//  Copyright © 2016 Technicat. All rights reserved.

extension Place: Equatable {

    static public func == (lhs: Place, rhs: Place) -> Bool {
        lhs.id == rhs.id
    }
}
