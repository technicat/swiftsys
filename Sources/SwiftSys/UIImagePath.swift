//  Created by Philip Chu on 11/3/19.
//  Copyright © 2019 Technicat. All rights reserved.

#if !os(macOS)
import UIKit

extension UIImage {
    static func pathJPEG(_ name: String) -> URL {
        pathSave(name + ".jpg")
    }

    static func pathPNG(_ name: String) -> URL {
        pathSave(name + ".png")
    }

    static func pathSave(_ name: String) -> URL {
        FileManager.default.documentsPath(name)
    }

    func writeJPEG(_ name: String) {
        if let data = jpegData(compressionQuality: 0.8) {
            let filename = UIImage.pathJPEG(name)
            try? data.write(to: filename)
        }
    }

    func writePNG(_ name: String) {
        if let data = pngData() {
            let filename = UIImage.pathPNG(name)
            try? data.write(to: filename)
        }
    }
}
#endif
