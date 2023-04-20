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

    public var body: some View {
        VStack {
            SheetTitle(title: title)
            Spacer()
            Text(LocalizedStringKey(msg))
            Divider()
            OKCancelButtons {
                action()
            }.labelStyle(.titleOnly).padding()
        }.font(.body).padding().presentationDetents([.fraction(0.25)])
    }
}
