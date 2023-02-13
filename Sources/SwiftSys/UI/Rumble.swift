//
//  Created by Philip Chu on 2/12/23.
//
#if !os(macOS)
    import SwiftUI

    class Rumble {
        static var light = UIImpactFeedbackGenerator(style: .light)

        static var soft = UIImpactFeedbackGenerator(style: .soft)

        static var medium = UIImpactFeedbackGenerator(style: .medium)
    }
#endif

