import Foundation
import SwiftUI

@available(iOS 15, *)
@available(macOS 12.0, *)
public struct FutureDatePicker: View {
    
    public let title: String
    
    @Binding public var date: Date
    
    public var body: some View {
        DatePicker(
            LocalizedStringKey(title),
            selection: $date,
            in: PartialRangeFrom(Date.now)
        )
    }
}
