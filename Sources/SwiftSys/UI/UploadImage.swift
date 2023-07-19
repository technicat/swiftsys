//
//  File.swift
//  
//
//  Created by Philip Chu on 7/18/23.
//

import Foundation
import SwiftUI

public class UploadImage {
    var image: UIImage
    var compression = 0.0
    
    init(_ image: UIImage) {
        self.image = image
    }
    
    var jpeg: Data? {
        image.jpegData(compressionQuality: compression)
    }
}
