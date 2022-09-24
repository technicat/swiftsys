//  Created by Philip Chu on 1/21/19.
//  Copyright © 2019 Technicat. All rights reserved.

// cases should be lowercase?

public enum FileError : Error {
    case notFound(_ file: String)
}

public enum LanguageError: Error {
    case noVoice(_ lang: Chinese)
    case noLanguage(_ index: Int)
}
