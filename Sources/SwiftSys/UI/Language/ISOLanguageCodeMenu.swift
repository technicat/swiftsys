//
//  Created by Philip Chu on 4/4/23.
//

import SwiftUI

/// menu to select a Locale.LanguageCode from all ISO language codes
/// todo - remove mis codes (not in ISO yet) from the list
@available(macOS 13, *)
@available(iOS 16, *)
public struct ISOLanguageCodeMenu: View {

  @Binding var language: Locale.LanguageCode

  public init(_ language: Binding<Locale.LanguageCode>) {
    _language = language
  }

  public var body: some View {
    Menu {
      ForEach(Locale.LanguageCode.isoLanguageCodes.sorted(by: { $0.display > $1.display })) {
        lang in
        ActionButton(lang.display, "character.book.closed") {
          language = lang
        }
      }
    } label: {
      LLabel(language.display, "character.book.closed")
    }
  }
}
