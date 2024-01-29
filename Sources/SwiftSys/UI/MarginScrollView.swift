import SwiftUI

@available(macOS 14, *)
public struct MarginScrollView<Content: View>: View {

  let margin = 10

  @ViewBuilder let scroll: () -> Content

    public var body: some View {
    ScrollView {
      scroll()
    }
    .contentMargins(CGFloat(margin), for: .scrollContent)
  }
}
