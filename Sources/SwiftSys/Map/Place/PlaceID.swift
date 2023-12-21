//  Created by Philip Chu on 8/2/16.
//  Copyright © 2016 Technicat. All rights reserved.

extension Place: Identifiable {
  public var id: String {
    name + address
  }
}
