//  Created by Philip Chu on 11/3/19.
//  Copyright © 2019 Technicat. All rights reserved.

#if os(iOS)
import UIKit

extension UIImage.Orientation {
    init(_ cgOrientation: UIImage.Orientation) {
        switch cgOrientation {
        case .up: self = .up
        case .upMirrored: self = .upMirrored
        case .down: self = .down
        case .downMirrored: self = .downMirrored
        case .left: self = .left
        case .leftMirrored: self = .leftMirrored
        case .right: self = .right
        case .rightMirrored: self = .rightMirrored
        @unknown default:
            // should throw something
            self = .up
        }
    }
}
#endif
