//
//  Created by Philip Chu on 3/10/23.
//

import SwiftUI

@available(macOS 10.15, *)
public extension View {
    
    func round(_ radius: CGFloat) -> some View {
        self.frame(width: radius*2, height: radius*2)
        .cornerRadius(radius)
    }
}

