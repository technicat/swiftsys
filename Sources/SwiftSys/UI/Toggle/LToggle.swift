//
//  Created by Philip Chu on 4/30/23.
//

import Foundation
import SwiftUI

@available(macOS 11.0, *)
public struct LToggle: View {

  let title: String
  let image: String

  @Binding var tog: Bool

  public init(_ title: String, _ image: String, _ tog: Binding<Bool>) {
    self.title = title
    self.image = image
    _tog = tog
  }

  public var body: some View {
    Toggle(isOn: $tog) {
      LLabel(title, image)
    }
  }
}
