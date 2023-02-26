//  Created by Philip Chu on 10/25/20.
//  Copyright © 2020 Technicat. All rights reserved.
//

#if os(iOS)
    import UIKit

/// maybe this should go in a different class like URL or a new one called Settings
/// and a separate getter to get just the URL
    public extension Sys {
        static func settings() {
            try? UIApplication.openSettingsURLString.openWeb()
        }
    }
#endif
