//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

// todo: start using this inside Word
public struct ChineseWord {
    public var chars: String
    public var resources: LinkList?
}

public struct Word {
    public var cantonese: String
    public var english: String
    public var yale: String // yale for cantonese
    public var pinyin: String // pinyin for mandarin
    public var mandarin: String? // if mandarin differs from cantonese
    public var simplified: String? // simplified chinese for mandarin
    public var resources: LinkList?

    // just so we can make it public
    public init(cantonese: String, english: String, yale: String, pinyin: String, mandarin: String?, simplified: String?, resources: LinkList?) {
        self.cantonese = cantonese
        self.english = english
        self.yale = yale
        self.pinyin = pinyin
        self.mandarin = mandarin
        self.simplified = simplified
        self.resources = resources
    }

    public func pronounce(_ language: Chinese) -> String {
        switch language {
        case .cantonese: return yale
        case .mandarin: return pinyin
        case .simplified: return pinyin
        }
    }

    private var cantoneseText: String {
        cantonese
    }

    private var mandarinText: String {
        mandarin ?? cantonese
    }

    private var simplifiedText: String {
        simplified ?? mandarinText
    }

    public func chineseText(_ language: Chinese) -> String {
        switch language {
        case .cantonese: return cantoneseText
        case .mandarin: return mandarinText
        case .simplified: return simplifiedText
        }
    }

    public func chineseEnglish(_ language: Chinese) -> String {
        "\(chineseText(language)) \(english)"
    }
    
    public func chineseEnglishParens(_ language: Chinese) -> String {
        "\(chineseText(language)) (\(english))"
    }
}
