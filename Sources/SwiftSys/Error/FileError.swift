//  Created by Philip Chu on 1/21/19.
//  Copyright © 2019 Technicat. All rights reserved.

public enum FileError: Error {

    /// file not found
    case notFound(_ file: String)
}
