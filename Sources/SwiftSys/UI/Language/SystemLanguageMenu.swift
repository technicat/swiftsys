//
//  Created by Philip Chu on 4/4/23.
//

import SwiftUI

@available(macOS 13, *)
@available(iOS 16, *)
public struct SystemLanguageMenu: View {

    @Binding var language: Locale.Language?

    public init (_ language: Binding<Locale.Language?>) {
        _language = language
    }

    public var body: some View {
        Menu {
            ForEach(Locale.Language.systemLanguages) { lang in
                //if let code = lang.languageCode {
                    ActionButton(lang.display,
                                 sysImage: "character.book.closed") {
                        language = lang
                    }
               // }
            }
        } label: {
            LLabel(language?.display ?? "",
                sysImage: "character.book.closed")
        }
    }
}




