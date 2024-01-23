//
//  Created by Philip Chu on 5/17/23.
//

import Foundation
import SwiftUI

#if os(iOS)
  @available(iOS 15.0, *)
  public struct SettingsButton: View {

    public init() {
    }

    public var body: some View {
      ActionButton("Settings", "gearshape") {
        Sys.settings()
      }
    }
  }
#endif
