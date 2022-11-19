//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

public struct Characters {
    public var text: String
    public var refs: LinkList?
}

// todo: rename, could be more than one word
public struct Word {
    public var cantonese: Characters
    public var english: String
    public var yale: String // yale for cantonese
    public var pinyin: String // pinyin for mandarin
    public var mandarin: Characters? // if mandarin differs from cantonese
    public var simplified: Characters? // simplified chinese for mandarin

    // just so we can make it public
    public init(cantonese: Characters, english: String, yale: String, pinyin: String,
                mandarin: Characters?, simplified: Characters?) {
        self.cantonese = cantonese
        self.english = english
        self.yale = yale
        self.pinyin = pinyin
        self.mandarin = mandarin
        self.simplified = simplified
    }

    public func pronounce(_ language: Chinese) -> String {
        switch language {
        case .cantonese: return yale
        case .mandarin: return pinyin
        case .simplified: return pinyin
        }
    }

    private var cantoneseText: String {
        cantonese.text
    }

    private var mandarinText: String {
        mandarin?.text ?? cantoneseText
    }

    private var simplifiedText: String {
        simplified?.text ?? mandarinText
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
