//  Created by Philip Chu on 10/25/20.
//  Copyright © 2020 Technicat. All rights reserved.
//

#if !os(macOS)
    import StoreKit
    import UIKit

    extension Sys {
        static var count: Int = 0

        public static func review(after: Int = 20) {
            count += 1
            if count > after {
                count = 0
                if let scene = UIApplication.shared.connectedScenes.first(
                    where: { $0.activationState == .foregroundActive }) as? UIWindowScene
                {
                    SKStoreReviewController.requestReview(in: scene)
                }
            }
        }
    }
#endif
