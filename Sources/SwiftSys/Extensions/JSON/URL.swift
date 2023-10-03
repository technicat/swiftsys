//
//  File.swift
//
//
//  Created by Philip Chu on 8/14/23.
//

import Foundation

extension URL {

    public init(jsonURLWithPath file: String) throws {
        let path = try Sys.jsonPath(file)
        self.init(fileURLWithPath: path)
    }
}
