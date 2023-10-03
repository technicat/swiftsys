//
//  File.swift
//
//
//  Created by Philip Chu on 8/13/23.
//

import Foundation

extension Data {

    public init(fromJSON file: String) throws {
        try self.init(contentsOf: URL(jsonURLWithPath: file))
    }
}
