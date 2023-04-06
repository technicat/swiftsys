 //
//  Created by Philip Chu on 4/5/23.
//

import Foundation

/// minimum OS required for LanguageCode
@available(macOS 13, *)
@available(iOS 16, *)
extension Locale.Language: Identifiable {
    public var id: String {
        self.maximalIdentifier
    }
}

/// minimum OS required for LanguageCode
@available(iOS 16, *)
@available(macOS 13, *)
extension Locale.Language: Displayable
{
    public var display: String {
        "\(region?.identifier.regionName ?? "")  \(script?.identifier.scriptName ?? "") \(languageCode?.display ?? "")"
    }
}
