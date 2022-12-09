//  Created by Philip Chu on 1/21/19.
//  Copyright © 2019 Technicat. All rights reserved.

import Foundation

public enum StringError: Error {

    case urlEncodeFail(_ url: String)
    case urlDecodeFail(_ url: String)
    case urlOpenFail(_ url: URL)
}
