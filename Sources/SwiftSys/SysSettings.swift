//  Created by Philip Chu on 10/25/20.
//  Copyright © 2020 Technicat. All rights reserved.
//

import Foundation
import UIKit

extension Sys {
    static func settings() {
        UIApplication.openSettingsURLString.openWeb()
    }
}
