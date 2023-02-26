//
//  Created by Philip Chu on 2/12/23.
//
#if os(iOS)
    import SwiftUI

/// convenience functions initiate vibration
/// e.g. Rumble.lightly()
    public class Rumble {

        public static var light = UIImpactFeedbackGenerator(style: .light)

        public static func lightly() {
            light.impactOccurred()
        }

        public static var medium = UIImpactFeedbackGenerator(style: .medium)

        public static func mediumly() {
            medium.impactOccurred()
        }

        public static var heavy = UIImpactFeedbackGenerator(style: .heavy)

        public static func heavily() {
            heavy.impactOccurred()
        }

        public static var soft = UIImpactFeedbackGenerator(style: .soft)

        public static func softly() {
            soft.impactOccurred()
        }

        public static var rigid = UIImpactFeedbackGenerator(style: .rigid)

        public static func rigidly() {
            rigid.impactOccurred()
        }
    }
#endif
