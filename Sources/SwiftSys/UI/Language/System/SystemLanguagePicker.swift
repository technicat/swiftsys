//
//  Created by Philip Chu on 4/4/23.
//

import SwiftUI

/// minimum OS required for Language
@available(macOS 13, *)
@available(iOS 16, *)
public struct SystemLanguagePicker: View {

    @Binding var language: Locale.Language

    public init (_ language: Binding<Locale.Language>) {
        _language = language
    }

    public var body: some View {
        Picker(selection: $language,
               label: Text("Language")) {
            ForEach(Locale.Language.systemLanguages) { lang in
                    Text(lang.display) 
            }
        }
    }
}





