  //
//  Created by Philip Chu on 4/5/23.
//

import Foundation

extension String {
    
    var languageName: String? {
        Locale.current.localizedString(forLanguageCode: self)
    }
    
    var scriptName: String? {
        Locale.current.localizedString(forScriptCode: self)
    }
    
    var regionName: String? {
        Locale.current.localizedString(forRegionCode: self)
    }
    
    var languageIDName: String? {
        Locale.current.localizedString(forIdentifier: self)
    }
    
}
