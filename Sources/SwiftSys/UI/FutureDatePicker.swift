import Foundation
import SwiftUI

@available(iOS 15, *)
@available(macOS 12.0, *)
public struct FutureDatedPicker: View {
    
    let title: String
    
    @Binding var date: Date
    
    public var body: some View {
        DatePicker(
            title,
            selection: $date,
            in: PartialRangeFrom(Date.now)
        )
    }
}
