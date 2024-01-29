import SwiftUI

struct MarginScrollView<Content: View>: View {

  let margin = 10

  @ViewBuilder let scroll: () -> Content

  var body: some View {
    ScrollView {
      scroll()
    }
    .contentMargins(CGFloat(margin), for: .scrollContent)
  }
}
