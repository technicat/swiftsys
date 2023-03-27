//
//  File.swift
//  
//
//  Created by Philip Chu on 3/26/23.
//

import Foundation

extension Region: Equatable {
    
    static public func == (lhs: Region, rhs: Region) -> Bool {
        lhs.id == rhs.id
    }
}

