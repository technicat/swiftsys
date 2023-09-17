//
//  FullImage.swift
//  
//
//  Created by Philip Chu on 9/16/23.
//

#if os(iOS)
import Foundation
import SwiftUI


struct FullImage: View {

    let image: UIImage

    @Binding var full: Bool

    var body: some View {
        Image(uiImage: image)
            .resizable()
            .scaledToFit()
            .onTapGesture {
            full = false
        }
    }
}

struct FullableImage: View {

    @State var full = false

    let image: UIImage

    var body: some View {
            Image(uiImage: image)
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    full = true
                }
                .fullScreenCover(isPresented: $full) {
                    FullImage(image: image, full: $full)
                }
        }
}

#endif
