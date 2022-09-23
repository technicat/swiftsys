//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

public enum Chinese {
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
    
    // could also use this as a localization key
    public var label: String {
        switch self {
        case .cantonese: return "Cantonese"
        case .mandarin: return "Mandarin"
        case .simplified: return "Simplified"
        }
    }
}

extension Chinese : CaseIterable {
    public static func language(_ index: Int) throws -> Chinese {
        guard index >= 0 && index < Chinese.allCases.count else {
            throw LanguageError.NoLanguage(index)
        }
        return Chinese.allCases[index]
    }
}

