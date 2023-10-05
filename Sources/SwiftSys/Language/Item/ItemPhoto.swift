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

    var imagePlace: String? {
        stockImagePlace
    }

    var stockImage: UIImage? {
        guard images.count > 0 else {
            return nil
        }
        return UIImage(named: images[0].image)
    }

    var stockImagePlace: String? {
        guard images.count > 0 else {
            return nil
        }
        return images[0].place
    }
}
