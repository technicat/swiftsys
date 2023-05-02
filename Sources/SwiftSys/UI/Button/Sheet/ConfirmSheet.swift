//
//  Created by Philip Chu on 4/20/23.
//

import Foundation
import SwiftUI

@available(iOS 16.0, *)
@available(macOS 13.0, *)
public struct ConfirmSheet: View {

    let title: String
    let msg: String
    let action: () -> Void

    public init(_ title: String, msg: String, action: @escaping () -> Void) {
        self.title = title
        self.msg = msg
        self.action = action
    }

    public var body: some View {
        VStack {
            SheetTitle(title)
            Spacer()
            Text(LocalizedStringKey(msg))
            Divider()
            OKCancelButtons {
                action()
            }.labelStyle(.titleOnly).padding()
        }.font(.body).padding().presentationDetents([.fraction(0.25)])
    }
}
