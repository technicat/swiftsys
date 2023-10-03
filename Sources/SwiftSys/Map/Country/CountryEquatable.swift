//
//  Created by Philip Chu on 3/26/23.
//

import Foundation

extension Country: Equatable {

    static public func == (lhs: Country, rhs: Country) -> Bool {
        lhs.id == rhs.id
    }
}
