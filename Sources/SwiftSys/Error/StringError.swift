//  Created by Philip Chu on 1/21/19.
//  Copyright © 2019 Technicat. All rights reserved.

public enum StringError: Error {
    case urlEncodeFail(_ url: String)
    case urlFail(_ url: String)
}
