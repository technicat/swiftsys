//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

/// Cantonese-centric word/phrase entry
public struct Word {
    public var cantonese: Characters
    public var english: String
    public var yale: String // yale for cantonese
    public var pinyin: String // pinyin for mandarin
    public var mandarin: Characters? // if mandarin differs from cantonese
    public var simplified: Characters? // simplified chinese for mandarin
    public var description: String

    public init(cantonese: Characters, english: String, yale: String, pinyin: String,
        mandarin: Characters?, simplified: Characters?, description: String = "") {
        self.cantonese = cantonese
        self.english = english
        self.yale = yale
        self.pinyin = pinyin
        self.mandarin = mandarin
        self.simplified = simplified
        self.description = description
    }

    public func pronounce(_ language: Chinese) -> String {
        switch language {
        case .cantonese: return yale
        case .mandarin: return pinyin
        case .simplified: return pinyin
        }
    }

    public func chineseText(_ language: Chinese) -> String {
        switch language {
        case .cantonese: return cantonese.text
        case .mandarin: return mandarin?.text ?? cantonese.text
        case .simplified: return simplified?.text ?? mandarin?.text ?? cantonese.text
        }
    }

    public func chineseRefs(_ language: Chinese) -> LinkList {
        switch language {
        case .cantonese: return cantonese.refs
        case .mandarin: return mandarin?.refs ?? cantonese.refs
        case .simplified: return simplified?.refs ?? mandarin?.refs ?? cantonese.refs
        }
    }

    public func chineseEnglish(_ language: Chinese) -> String {
        "\(chineseText(language)) \(english)"
    }

    public func chineseEnglishParens(_ language: Chinese) -> String {
        "\(chineseText(language)) (\(english))"
    }
}

extension Word: Codable {

    enum CodingKeys: String, CodingKey {
        case cantonese = "Cantonese"
        case yale = "Yale"
        case english = "English"
        case pinyin = "Pinyin"
        case mandarin = "Mandarin"
        case simplified = "Simplified"
        case description

    }
}
