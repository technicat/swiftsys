//
//  Created by Philip Chu on 4/20/23.
//
import Foundation
import SwiftUI

@available(macOS 10.15.0, *)
@available(iOS 15.0, *)
public struct SheetTitle: View {

    let title: String

    public init(_ title: String) {
        self.title = title
    }

    public var body: some View {
        Text(LocalizedStringKey(title))
            .font(.caption)
            .multilineTextAlignment(.center)
    }
}
