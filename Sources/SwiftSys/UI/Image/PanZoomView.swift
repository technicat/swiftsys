import Foundation
import SwiftUI

@available(iOS 17.0, *)
@available(macOS 14, *)
public struct PanZoomView<Content: View>: View {

  @State private var zoom = 1.0
  @State private var mag = 1.0
  @State private var offset = CGSize()
  @State private var trans = CGSize()

  @ViewBuilder let content: () -> Content

    public init(_ content: @escaping () -> Content) {
      self.content = content
    }

  private var totalZoom: Double {
    zoom * mag
  }

  private var totalOffset: CGSize {
    CGSize(
      width: offset.width + trans.width,
      height: offset.height + trans.height)
  }

  public var body: some View {
    content()
      .onTapGesture(count: 2) {
        zoom = 1.0
        offset = CGSize()
      }
      .scaleEffect(totalZoom)
      .offset(totalOffset)
      .gesture(
        MagnifyGesture()
          .onChanged { value in
            mag = max(value.magnification, 1 / zoom)
          }
          .onEnded { value in
            zoom = totalZoom
            mag = 1.0
          }
      )
      .highPriorityGesture(
        DragGesture()
          .onChanged { value in
            trans = value.translation
          }
          .onEnded { value in
            offset = totalOffset
            trans = CGSize()
          }
      )
  }
}
