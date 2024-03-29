//  Created by Philip Chu on 7/29/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

import Foundation

/// convenience functions for URL strings
extension String {

  public func urlEncode() throws -> String {
    guard let new = addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
      throw StringError.urlEncodeFail(self)
    }
    return new
  }

  public func urlDecode() throws -> String {
    guard let new = removingPercentEncoding else {
      throw StringError.urlDecodeFail(self)
    }
    return new
  }

  /// create a URL from string
  /// todo - make trim an option?
  /// - Parameters
  /// - urlencode:  optionally urlencode the string
  public func url(urlencode: Bool = true) throws -> URL {
    if let url = URL(string: self.trimWS) {
      return url
    } else {
      if urlencode {
        if let url = try? URL(string: self.urlEncode()) {
          return url
        }
      }
      throw StringError.urlEncodeFail(self)
    }
  }

  /// convenience wrapper to access URL
  /// returns it as an optional instead of throwing
  public var ourl: URL? {
    try? url()
  }

  /// create an https URL from this string (i.e.prepends the https:// prefix)
  /// - Parameters
  ///     - urlencode: whether to urlencode the string
  /// todo: trim?
  public func urlHttps(urlencode: Bool = true) throws -> URL {
    try https.url(urlencode: urlencode)
  }

  public var https: String {
    "https://\(self)"
  }

  public var isHttps: Bool {
    hasPrefix("https://")
  }

}
