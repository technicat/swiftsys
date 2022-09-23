//  Created by Philip Chu on 1/21/19.
//  Copyright © 2019 Technicat. All rights reserved.

// cases should be lowercase?

public enum FileError : Error {
    case NotFound(_ file: String)
}

public enum LanguageError: Error {
    case NoVoice(_ lang: Chinese)
    case NoLanguage(_ index: Int)
}
