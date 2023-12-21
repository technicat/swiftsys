//  Created by Philip Chu on 12/19/18.
//  Copyright © 2018 Technicat. All rights reserved.

extension Line: Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}

public func == (lhs: Line, rhs: Line) -> Bool {
  lhs.id == rhs.id
}
