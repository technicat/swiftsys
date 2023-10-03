//
//  File.swift
//
//
//  Created by Philip Chu on 3/26/23.
//

import Foundation

extension Country: Hashable {

    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
