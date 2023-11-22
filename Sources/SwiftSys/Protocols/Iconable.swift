//
//  Created by Philip Chu on 4/9/23.
//

import Foundation

public protocol Iconable {

    /// name of a system icon from SF Symbols
    /// should rename, e.g. sfIcon, or SFIconable
    var icon: String { get }
}
