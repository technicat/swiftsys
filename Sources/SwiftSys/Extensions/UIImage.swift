//  Created by Philip Chu on 11/3/19.
//  Copyright © 2019 Technicat. All rights reserved.

#if os(iOS)
    import UIKit
#endif
#if os(macOS)
    import AppKit
    public typealias UIImage = NSImage
#endif

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

#if os(iOS)
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
#endif
}

