//
//  Created by Philip Chu on 4/4/23.
//

extension ISO639a2: Identifiable {
  public var id: String {
    self.rawValue
  }
}
