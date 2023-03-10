//  Created by Philip Chu on 7/29/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

import Foundation

public extension String {

    func urlEncode() throws -> String {
        guard let new = addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            throw StringError.urlEncodeFail(self)
        }
        return new
    }

    func urlDecode() throws -> String {
        guard let new = removingPercentEncoding else {
            throw StringError.urlDecodeFail(self)
        }
        return new
    }

    /// create a URL from string
    /// todo - trim?
    func urlCreate(urlencode: Bool = true) throws -> URL {
        if let url = URL(string: self) {
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

    /// create an https URL from this string (i.e.prepends the https:// prefix)
    /// todo: trim?
    func urlHttps(urlencode: Bool = true) throws -> URL {
        try https.urlCreate(urlencode: urlencode)
    }

    var https: String {
        "https://\(self)"
    }
    
    var isHttps: Bool {
        hasPrefix("https://")
    }

}
