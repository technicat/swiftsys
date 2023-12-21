import Foundation
import SwiftUI

@available(iOS 15, *)
@available(macOS 12.0, *)
public struct FutureDatePicker: View {

  public let title: String

  @Binding public var date: Date

  public init(_ title: String, date: Binding<Date>) {
    self.title = title
    _date = date
  }

  public var body: some View {
    DatePicker(
      selection: $date,
      in: PartialRangeFrom(Date.now)
    ) {
      LLabel(title, "calendar")
    }
  }
}
