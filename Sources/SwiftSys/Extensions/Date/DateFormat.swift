//
//  Created by Philip Chu on 2/25/23.
//

import Foundation

/// convenience functions for formatted date strings
@available(macOS 12.0, *)
@available(iOS 15.0, *)
extension Date {

  /// Oct 21, 2015
  public var shortDate: String {
    formatted(date: .abbreviated, time: .omitted)
  }

  /// October 21, 2015
  public var longDate: String {
    formatted(date: .long, time: .omitted)
  }

  /// Wednesday, October 21, 2015"
  public var dayDate: String {
    formatted(date: .complete, time: .omitted)
  }

  /// 10/21/2015
  public var numDate: String {
    formatted(date: .numeric, time: .omitted)
  }

  public var shortTime: String {
    formatted(date: .omitted, time: .shortened)
  }

  public var standardTime: String {
    formatted(date: .omitted, time: .standard)
  }

  public var completeTime: String {
    formatted(date: .omitted, time: .complete)
  }

  public var complete: String {
    formatted(date: .complete, time: .complete)
  }

  public var timeOrDate: String {
    Calendar.current.isDateInToday(self) ? shortTime : numDate
  }

  public var timeOrDateTime: String {
    Calendar.current.isDateInToday(self) ? shortTime : complete
  }
}
