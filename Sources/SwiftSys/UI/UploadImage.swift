//
//  File.swift
//  
//
//  Created by Philip Chu on 7/18/23.
//

import Foundation
import SwiftUI

#if os(iOS)
public class UploadImage {

    public var image: UIImage
    public var compression = 0.0

    public init(_ image: UIImage) {
        self.image = image
    }

    public var jpeg: Data? {
        image.jpegData(compressionQuality: compression)
    }
}
#endif
