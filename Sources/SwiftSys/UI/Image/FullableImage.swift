//
//  FullImage.swift
//
//
//  Created by Philip Chu on 9/16/23.
//

#if os(iOS)
  import Foundation
  import SwiftUI

  @available(iOS 17.0, *)
  public struct FullableImage: View {

    @State var full = false

    let image: UIImage

    public init(_ image: UIImage) {
      self.image = image
    }

    public var body: some View {
      Image(uiImage: image)
        .resizable()
        .scaledToFit()
        .onTapGesture {
          full = true
        }
        .fullScreenCover(isPresented: $full) {
          PanZoomView {
            FullImage(image, full: $full)
              .onTapGesture {
                full = false
              }
          }
        }
    }
  }

#endif
