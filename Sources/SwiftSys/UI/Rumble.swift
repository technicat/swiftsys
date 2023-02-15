//
//  Created by Philip Chu on 2/12/23.
//
#if !os(macOS)
    import SwiftUI

    public class Rumble {
        public static var light = UIImpactFeedbackGenerator(style: .light)
        
        public static func light() {
            light.impactOccurred()
        }

        public static var soft = UIImpactFeedbackGenerator(style: .soft)
        
        public static func soft() {
            soft.impactOccurred()
        }

        public static var medium = UIImpactFeedbackGenerator(style: .medium)
        
        public static func medium() {
            medium.impactOccurred()
        }
    }
#endif

