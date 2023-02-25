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
        self.formatted(date: .abbreviated, time: .omitted)
    }

    var longDate: String {
        self.formatted(date: .long, time: .omitted)
    }

    var dayDate: String {
        self.formatted(date: .complete, time: .omitted)
    }

    var numDate: String {
        self.formatted(date: .numeric, time: .omitted)
    }
}
