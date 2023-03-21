//  Created by Philip Chu on 11/3/19.
//  Copyright © 2019 Technicat. All rights reserved.

#if os(iOS)
import UIKit

extension CGImagePropertyOrientation {

    /// create a CGImagePropertyOrientation from a UIImage.Orientation
    /// handy when converting a UIImage to a CGImage or CIImage
    public init(_ uiOrientation: UIImage.Orientation) {
        switch uiOrientation {
        case .up: self = .up
        case .upMirrored: self = .upMirrored
        case .down: self = .down
        case .downMirrored: self = .downMirrored
        case .left: self = .left
        case .leftMirrored: self = .leftMirrored
        case .right: self = .right
        case .rightMirrored: self = .rightMirrored
        @unknown default:
            /// or should throw something or return nil?
            self = .up
        }
    }
}

extension UIImage.Orientation {

    /// create  a UIImage.Orientation from a CGImagePropertyOrientation
    public init(_ cgOrientation: UIImage.Orientation) {
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
            /// or should throw something or return nil?
            self = .up
        }
    }
}
#endif
