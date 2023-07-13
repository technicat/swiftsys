//  Created by Philip Chu on 3/13/23.
//

import Foundation

public extension String {

    /// remove leading and trailing whitespace
    var trimWS: String {
        trimmingCharacters(in: .whitespaces)
    }

    /// remoe leading and trailing whitespace and newlines
    var trimWSNL: String {
        trimmingCharacters(in: .whitespacesAndNewlines)
    }

    /// text is empty or only whitespace
    var isWS: Bool {
        trimWS.isEmpty
    }

    /// text is empty or only whitespace or newlines
    var isWSNL: Bool {
        trimWSNL.isEmpty
    }

    /// nil string is whitespace
    var nilIfEmpty: String? {
        isWSNL ? nil : self
    }
}
