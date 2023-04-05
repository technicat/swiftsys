//  Created by Philip Chu on 10/25/20.
//  Copyright © 2020 Technicat. All rights reserved.

import Foundation

public extension Sys {
    
    /// current system language
    @available(iOS 16, *)
    @available(macOS 13, *)
    static var currentLangCode: Locale.LanguageCode? {
        Locale.current.language.languageCode
    }

    /// current ISO 639 language code
    @available(iOS 16, *)
    @available(macOS 13, *)
    static var currentLangID: String? {
        currentLangCode?.identifier
    }

    /// current localized language name, if available
    @available(iOS 16, *)
    @available(macOS 13, *)
    static var currentLangName: String? {
        guard let ID = currentLangID else {
            return nil
        }
        return langName(ID)
    }

    static func langName(_ ID: String) -> String? {
        return Locale.current.localizedString(forLanguageCode: ID)
    }
}
