//
//  Created by Philip Chu on 10/22/23.
//

import Foundation
import SwiftUI

@available(iOS 17.0, *)
@available(macOS 14.0, *)
public struct UnimplementedView: View {
    
    public init() {
    }

    public var body: some View {
        ContentUnavailableView {
            LLabel("unimplemented", "circle.slash")
        } description: {
            Text("unimplemented.description")
        }
    }
}
