//  Created by Philip Chu on 10/25/20.
//  Copyright © 2020 Technicat. All rights reserved.

import Foundation

public extension Sys {

    /// current system language
    /// ISO 639 language code
    /// rename?
    @available(iOS 16, *)
    @available(macOS 13, *)
    static var currentLang: String? {
        Locale.current.language.languageCode?.identifier
    }

    @available(iOS 16, *)
    @available(macOS 13, *)
    static var currentLangName: String? {
        guard let lang = currentLang else {
            return nil
        }
        return Locale.current.localizedString(forLanguageCode: lang)
    }
}
