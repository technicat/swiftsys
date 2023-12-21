//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

extension Chinese: SpokenLanguage {
  // locales used for TTS and STT
  public var spoken: String {
    switch self {
    case .cantonese: return "zh-HK"
    case .mandarin: return "zh-TW"
    case .simplified: return "zh-CN"
    }
  }
}
