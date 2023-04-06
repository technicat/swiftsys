 //
//  Created by Philip Chu on 4/5/23.
//

import Foundation

@available(macOS 13, *)
@available(iOS 16, *)
extension Locale.Language: Identifiable {
    public var id: String {
        self.maximalIdentifier
    }
}

@available(iOS 16, *)
@available(macOS 13, *)
extension Locale.Language: Displayable
{
    public var display: String {
        maximalIdentifier.scriptName ?? maximalIdentifier
    }
}
