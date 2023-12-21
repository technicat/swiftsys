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

    public init(_ text: String) {
      self.text = text
    }

    public var body: some View {
      Text(text)
        .onTapGesture {
          full = true
        }
        .fullScreenCover(isPresented: $full) {
          FullText(text, full: $full)
        }
    }
  }

  public struct FullText: View {

    let text: String

    @Binding var full: Bool

    public init(_ text: String, full: Binding<Bool>) {
      self.text = text
      _full = full
    }

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
