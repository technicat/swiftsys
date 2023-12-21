//
//  Busy.swift
//
//
//  Created by Philip Chu on 10/1/23.
//

import SwiftUI

@available(iOS 15.0, *)
@available(macOS 11.0, *)
public struct Busy: View {

  let ctr: Int

  public init(ctr: Int) {
    self.ctr = ctr
  }

  public var body: some View {
    if ctr > 0 {
      ProgressView()
        .controlSize(.large)
    }
  }
}
