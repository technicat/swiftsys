//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

import Foundation

public enum Chinese: String, Language {

    case cantonese
    case mandarin
    case simplified

    // language codes used for TTS and STT
    public var spoken: String {
        switch self {
        case .cantonese: return "zh-HK"
        case .mandarin: return "zh-TW"
        case .simplified: return "zh-CN"
        }
    }
}

extension Chinese: CaseIterable {

    public static func language(_ index: Int) throws -> Chinese {
        guard index >= 0 && index < Chinese.allCases.count else {
            throw LanguageError.noLanguage(index)
        }
        return Chinese.allCases[index]
    }

    public static func langCanto(_ index: Int) -> Chinese {
        guard let lang = try? language(index) else {
            return .cantonese
        }
        return lang
    }
}
