//
//  Created by Philip Chu on 5/17/23.
//

import Foundation
import SwiftUI

#if os(iOS)
public struct SettingsButton: View {

    public var body: some View {
        ActionButton("settings.open", "gearshape") {
            Sys.settings()
        }
    }
}
#endif
