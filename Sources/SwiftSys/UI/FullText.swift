//
//  FullText.swift
//  
//
//  Created by Philip Chu on 9/16/23.
//
#if os(iOS)
import Foundation
import SwiftUI

public struct FullableText: View {

    @State var full = false

    let text: String

    public var body: some View {
       Text(text)
            .onTapGesture {
            full = true
        }
            .fullScreenCover(isPresented: $full) {
                FullText(text: text, full: $full)
        }
    }
}

public struct FullText: View {

    let text: String

    @Binding var full: Bool

    public var body: some View {
        ScrollView {
            Text(text).font(.body)
        }.padding()
            .onTapGesture {
            full = false
        }
    }
}
#endif
