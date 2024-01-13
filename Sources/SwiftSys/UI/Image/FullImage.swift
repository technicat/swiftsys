//
//  FullImage.swift
//
//
//  Created by Philip Chu on 9/16/23.
//

import Foundation
import SwiftUI

#if os(iOS)
  @available(iOS 17.0, *)
  public struct FullImage: View {

    let image: UIImage

    @Binding var full: Bool

    public init(_ image: UIImage, full: Binding<Bool>) {
      self.image = image
      _full = full
    }

    public var body: some View {
      Image(uiImage: image)
        .resizable()
        .scaledToFit()
        .onTapGesture {
          full = false
        }
    }
  }

#endif
