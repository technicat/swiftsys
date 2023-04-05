//
//  File.swift
//  
//
//  Created by Philip Chu on 4/5/23.
//

import Foundation

extension String {
    
    var languageName: String? {
        Locale.current.localizedString(forLanguageCode: self)
    }
    
}
