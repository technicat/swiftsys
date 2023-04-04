//
//  Created by Philip Chu on 4/4/23.
//

import SwiftUI

@available(macOS 11.0, *)
public struct LanguageMenu: View {

    @Binding var language: ISO639_1
    
    public init (_ language: Binding<ISO639_1>) {
        _language = language
    }
    
    public var body: some View {
        Menu {
            ForEach(ISO639_1.allCases.sorted(by: { $0.display > $1.display})) { lang in
                ActionButton(lang.display,
                    sysImage: "character.book.closed") {
                    language = lang
                }
            }
        } label: {
            Label(LocalizedStringKey(language.display),
                  systemImage: "character.book.closed")
        }
    }
}
