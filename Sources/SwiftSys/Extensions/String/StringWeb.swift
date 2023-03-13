//  Created by Philip Chu on 7/29/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

public extension String {

    func openWeb() throws {
        try url().open()
    }
}
