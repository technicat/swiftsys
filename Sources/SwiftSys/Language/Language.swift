//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

import Foundation

public protocol Language {
    
    /// 
    var spoken: String { get }
}

public extension Language {
    
    /// current system language
    /// ISO 639 language code
    /// rename?
    @available(iOS 16, *)
    @available(macOS 13, *)
    static var currentLang: String? {
        Locale.current.language.languageCode?.identifier
    }
}
