//  Created by Philip Chu on 10/25/20.
//  Copyright © 2020 Technicat. All rights reserved.

import Foundation

extension Sys {
    static public var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentsDirectory = paths[0]
        return documentsDirectory
    }
    
    static public func documentsPath(_ name: String) -> URL {
        documentsDirectory.appendingPathComponent(name)
    }
    
    static public func jsonPath(_ file: String) throws -> String {
        guard let path = Bundle.main.path(forResource: file, ofType: "json") else {
            throw FileError.notFound(file)
        }
        return path
    }
}
