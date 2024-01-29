import SwiftUI

@available(iOS 17.0, *)
@available(macOS 14, *)
public struct MarginScrollView<Content: View>: View {

  let margin = 10

 let content: Content
    
    public init(@ViewBuilder let content: @escaping () -> Content) {
        self.content = content()
    }
    
  public var body: some View {
    ScrollView {
      content
    }
    .contentMargins(CGFloat(margin), for: .scrollContent)
  }
}
