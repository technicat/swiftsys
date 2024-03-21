//  Created by Philip Chu on 3/13/23.
//

import Foundation

extension String {

  /// remove leading and trailing whitespace
  public var trimWS: String {
    trimmingCharacters(in: .whitespaces)
  }

  /// remove leading and trailing whitespace and newlines
  public var trimWSNL: String {
    trimmingCharacters(in: .whitespacesAndNewlines)
  }

  /// text is empty or only whitespace
  public var isWS: Bool {
    trimWS.isEmpty
  }

  /// text is empty or only whitespace or newlines
  public var isWSNL: Bool {
    trimWSNL.isEmpty
  }

  /// nil string is whitespace
  public var orNil: String? {
    isWSNL ? nil : self
  }
}

extension Array {
/// nil string is whitespace
public var orNil: Array? {
  isEmpty ? nil : self
}
}

