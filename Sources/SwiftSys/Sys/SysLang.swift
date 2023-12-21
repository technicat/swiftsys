//  Created by Philip Chu on 10/25/20.
//  Copyright © 2020 Technicat. All rights reserved.

import Foundation

@available(iOS 16, *)
@available(macOS 13, *)
extension Sys {

  /// current system language
  public static var currentLangCode: Locale.LanguageCode? {
    Locale.current.language.languageCode
  }

  /// current ISO 639 language code
  public static var currentLangID: String? {
    currentLangCode?.identifier
  }

  /// current localized language name, if available
  public static var currentLangName: String? {
    guard let ident = currentLangID else {
      return nil
    }
    return ident.languageName
  }
}
