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

    // urlencode should be an option?
    func urlCreate(urlencode: Bool = false) throws -> URL {
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
}
