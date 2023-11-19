//
//  Created by Philip Chu on 11/17/23.
//

import Foundation

extension URL {

    var host: String? {
        guard let comp = URLComponents(url: self, resolvingAgainstBaseURL: false) else {
            return nil
        }
        return comp.host
    }
}
