//
//  File.swift
//  
//
//  Created by Philip Chu on 2/25/23.
//

import Foundation

@available(macOS 12.0, *)
@available(iOS 15.0, *)
public extension Date {

    var shortDate: String {
        formatted(date: .abbreviated, time: .omitted)
    }

    var longDate: String {
        formatted(date: .long, time: .omitted)
    }

    var dayDate: String {
        formatted(date: .complete, time: .omitted)
    }

    var numDate: String {
        formatted(date: .numeric, time: .omitted)
    }
}
