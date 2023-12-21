//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

/// no need to use these anymore since AppStorage can save enum
extension Chinese {

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
