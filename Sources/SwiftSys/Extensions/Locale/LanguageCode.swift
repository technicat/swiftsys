 //
//  Created by Philip Chu on 4/5/23.
//

import Foundation

@available(iOS 16, *)
@available(macOS 13, *)
extension Locale.LanguageCode: Displayable
{
    public var display: String {
        identifier.languageName ?? identifier
    }
}

@available(macOS 13, *)
@available(iOS 16, *)
extension Locale.LanguageCode: Identifiable {
    public var id: String {
        identifier
    }
}
