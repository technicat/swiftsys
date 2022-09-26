
//  Created by Philip Chu on 5/16/17.
//  Copyright © 2017 Technicat. All rights reserved.

#if !os(macOS)
import Foundation

public func == (lhs: Item, rhs: Item) -> Bool {
    lhs.id == rhs.id
}

extension Item: Identifiable, Equatable {
    public var id: String {
        word.id
    }
}
#endif
