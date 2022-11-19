//  Created by Philip Chu on 10/25/20.
//  Copyright © 2020 Technicat. All rights reserved.

import Foundation

extension Sys {

    static public func jsonPath(_ file: String) throws -> String {
        guard let path = Bundle.main.path(forResource: file, ofType: "json") else {
            throw FileError.notFound(file)
        }
        return path
    }

    static public func jsonURL(_ file: String) throws -> URL {
        let path = try jsonPath(file)
        return URL(fileURLWithPath: path)
    }
}
