//
//  FullText.swift
//  
//
//  Created by Philip Chu on 9/16/23.
//
#if os(iOS)
import Foundation
import SwiftUI

struct FullableText: View {

    @State var full = false

    let text: String

    var body: some View {
       Text(text)
            .onTapGesture {
            full = true
        }
            .fullScreenCover(isPresented: $full) {
                FullText(text: text, full: $full)
        }
    }
}

@available(macOS 10.15, *)
struct FullText: View {

    let text: String

    @Binding var full: Bool

    var body: some View {
        ScrollView {
            Text(text).font(.body)
        }.padding()
            .onTapGesture {
            full = false
        }
    }
}
#endif
