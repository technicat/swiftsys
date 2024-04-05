//
//  Created by Philip Chu on 4/5/23.
//

import Foundation

extension String {

  public var languageName: String? {
    Locale.current.localizedString(forLanguageCode: self)
  }

  public var scriptName: String? {
    Locale.current.localizedString(forScriptCode: self)
  }

  public var regionName: String? {
    Locale.current.localizedString(forRegionCode: self)
  }
}
