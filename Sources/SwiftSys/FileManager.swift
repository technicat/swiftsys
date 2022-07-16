//  Created by Philip Chu on 9/2/17.
//  Copyright © 2017 Technicat. All rights reserved.
//

import Foundation

// todo - move to swiftsys
extension FileManager {
    var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentsDirectory = paths[0]
        return documentsDirectory
    }

    func documentsPath(_ name: String) -> URL {
        FileManager.default.documentsDirectory.appendingPathComponent(name)
    }
}
