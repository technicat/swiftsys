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

    /// Oct 21, 2015
    var shortDate: String {
        formatted(date: .abbreviated, time: .omitted)
    }

    /// October 21, 2015
    var longDate: String {
        formatted(date: .long, time: .omitted)
    }

    /// Wednesday, October 21, 2015"
    var dayDate: String {
        formatted(date: .complete, time: .omitted)
    }

    /// 10/21/2015
    var numDate: String {
        formatted(date: .numeric, time: .omitted)
    }
}
