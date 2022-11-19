//  Created by Philip Chu on 5/16/17.
//  Copyright © 2017 Technicat. All rights reserved.
#if os(iOS)
    import UIKit
#endif
#if os(macOS)
    import AppKit
#endif

public extension Item {
    var image: UIImage? {
        stockImage
    }

    var imagePlace: String {
        stockImagePlace
    }

    var stockImage: UIImage? {
        guard imageFile.count > 0 else {
            return nil
        }
        return UIImage(named: imageFile[0].image)
    }

    var stockImagePlace: String {
        guard imageFile.count > 0 else {
            return "Unknown"
        }
        return imageFile[0].place
    }
}
