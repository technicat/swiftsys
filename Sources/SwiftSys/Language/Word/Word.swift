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

    public func chineseRefs(_ language: Chinese) -> [Site] {
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
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if let chars = try container.decodeIfPresent(Characters.self, forKey: .cantonese) {
            self.cantonese = chars
        } else if let str = try container.decodeIfPresent(String.self, forKey: .cantonese) {
            self.cantonese = Characters(str)
        } else {
            // should throw
            self.cantonese = Characters("")
        }
        if let chars = try container.decodeIfPresent(Characters.self, forKey: .mandarin) {
            self.mandarin = chars
        } else if let str = try container.decodeIfPresent(String.self, forKey: .mandarin) {
            self.mandarin = Characters(str)
        } else {
            self.mandarin = nil
        }
        if let chars = try container.decodeIfPresent(Characters.self, forKey: .simplified) {
            self.simplified = chars
        } else if let str = try container.decodeIfPresent(String.self, forKey: .simplified) {
            self.simplified = Characters(str)
        } else {
            self.simplified = nil
        }
        self.english = try container.decode(String.self, forKey: .english)
        self.yale = try container.decode(String.self, forKey: .yale)
        self.pinyin = try container.decode(String.self, forKey: .pinyin)
        self.description = try container.decode(String.self, forKey: .description)
    }
}
