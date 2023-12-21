//  Created by Philip Chu on 12/19/18.
//  Copyright © 2018 Technicat. All rights reserved.

extension Dialog: Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}

public func == (lhs: Dialog, rhs: Dialog) -> Bool {
  lhs.id == rhs.id
}
