//  Created by Philip Chu on 7/29/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

import Foundation

public extension String {
    
    func urlEncode() throws -> String  {
        guard let new = addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            throw StringError.urlEncodeFail(self)
        }
        return new
    }
    
    func urlCreate() throws -> URL {
        if let url = URL(string: self) {
            return url
        } else {
            if let url = try? URL(string: self.urlEncode()) {
                return url
            } else {
                throw StringError.urlEncodeFail(self)
            }
        }
    }
}
