import Foundation
import SwiftUI

@available(iOS 15.0, *)
@available(macOS 12.0, *)
public struct DeleteButton: View {

  let action: () -> Void

  public init(action: @escaping () -> Void) {
    self.action = action
  }

  public var body: some View {
    ActionButton(
      "Delete", "trash",
      role: .destructive
    ) {
      action()
    }
  }
}
