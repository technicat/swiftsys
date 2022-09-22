//  Created by Philip Chu on 1/21/19.
//  Copyright © 2019 Technicat. All rights reserved.

extension Country: Identifiable {
    public var id: String {
        name
    }
}
