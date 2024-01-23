import Foundation
import SwiftUI

@available(iOS 15.0, *)
@available(macOS 12.0, *)
public struct EraseButton: View {

  let action: () -> Void

  public init(action: @escaping () -> Void) {
    self.action = action
  }

  public var body: some View {
    ActionButton(
      "Remove", "eraser"
    ) {
      action()
    }
  }
}
