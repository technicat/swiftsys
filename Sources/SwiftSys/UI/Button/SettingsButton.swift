//
//  Created by Philip Chu on 5/17/23.
//

import Foundation
import SwiftUI

#if os(iOS)
struct SettingsButton: View {

    var body: some View {
        ActionButton("settings.open", "gearshape") {
            Sys.settings()
        }
    }
}
#endif
