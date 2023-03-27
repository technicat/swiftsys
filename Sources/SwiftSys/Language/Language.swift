//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

import Foundation

protocol Language {
    
    /// 
    var spoken: String { get }
}

extension Language {
    
    /// current system language
    /// ISO 639 language code
    @available(iOS 16, *)
    @available(macOS 13, *)
    var currentLang:String? {
        Locale.current.language.languageCode?.identifier
    }
}
