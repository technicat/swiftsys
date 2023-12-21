//
//  Created by Philip Chu on 2/12/23.
//
#if os(iOS)
  import SwiftUI

  /// convenience functions initiate vibration
  /// e.g. Rumble.lightly()
  public class Rumble {

    static var light = UIImpactFeedbackGenerator(style: .light)

    public static func lightly() {
      light.impactOccurred()
    }

    static var medium = UIImpactFeedbackGenerator(style: .medium)

    public static func mediumly() {
      medium.impactOccurred()
    }

    static var heavy = UIImpactFeedbackGenerator(style: .heavy)

    public static func heavily() {
      heavy.impactOccurred()
    }

    static var soft = UIImpactFeedbackGenerator(style: .soft)

    public static func softly() {
      soft.impactOccurred()
    }

    static var rigid = UIImpactFeedbackGenerator(style: .rigid)

    public static func rigidly() {
      rigid.impactOccurred()
    }
  }
#endif
