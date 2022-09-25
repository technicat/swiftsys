//  Created by Philip Chu on 1/21/19.
//  Copyright © 2019 Technicat. All rights reserved.

public enum FileError : Error {
    case notFound(_ file: String)
}

public enum LanguageError: Error {
    case noVoice(_ lang: Chinese)
    case noLanguage(_ index: Int)
}

public enum StringError: Error {
    case urlEncodeFail(_ url: String)
    case urlFail(_ url: String)
}
