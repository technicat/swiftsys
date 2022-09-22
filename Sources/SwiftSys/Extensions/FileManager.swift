//  Created by Philip Chu on 9/2/17.
//  Copyright © 2017 Technicat. All rights reserved.
//

import Foundation

extension FileManager {
    public var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentsDirectory = paths[0]
        return documentsDirectory
    }

    public func documentsPath(_ name: String) -> URL {
        FileManager.default.documentsDirectory.appendingPathComponent(name)
    }
}
