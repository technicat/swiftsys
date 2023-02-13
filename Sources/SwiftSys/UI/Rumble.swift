//
//  Created by Philip Chu on 2/12/23.
//
#if !os(macOS)
    import SwiftUI

    public class Rumble {
        public static var light = UIImpactFeedbackGenerator(style: .light)

        public static var soft = UIImpactFeedbackGenerator(style: .soft)

        public static var medium = UIImpactFeedbackGenerator(style: .medium)
    }
#endif

