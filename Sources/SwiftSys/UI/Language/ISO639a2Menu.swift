//
//  Created by Philip Chu on 4/4/23.
//

import SwiftUI

/// menu to select an ISO639.1 (alpha2) enum
@available(iOS 15.0, *)
@available(macOS 12.0, *)
public struct ISO639a2Menu: View {

    @Binding var language: ISO639a2

    public init (_ language: Binding<ISO639a2>) {
        _language = language
    }

    public var body: some View {
        Menu {
            ForEach(ISO639a2.allCases.sorted(by: { $0.display > $1.display })) { lang in
                ActionButton(lang.display, "character.book.closed") {
                    language = lang
                }
            }
        } label: {
            LLabel(language.display, "character.book.closed")
        }
    }
}
