//
//  File.swift
//  
//
//  Created by Philip Chu on 8/13/23.
//

import Foundation


extension JSONDecoder {

    public func readStrings(_ file: String) throws -> [String] {
        let data = try Data(fromJSON: file)
        return try decode([String].self, from: data)
    }
    
}

extension Data {

    public init(fromJSON file: String) throws {
        try self.init(contentsOf: Sys.jsonURL(file))
    }
    
}

