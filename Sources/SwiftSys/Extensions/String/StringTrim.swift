//  Created by Philip Chu on 3/13/23.
//

import Foundation

public extension String {
    
    var trimWS: String {
        trimmingCharacters(in: .whitespaces)
    }
    
    var trimWSNL: String {
        trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
