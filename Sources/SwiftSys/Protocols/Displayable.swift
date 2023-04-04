//
//  Created by Philip Chu on 4/4/23.
//

public protocol Displayable {
    
    /// alternative to overriding  description string
    /// intended for UI display
    /// can be a localizable string, up to you to call LocalizedStringKey
    var display: String { get }
}

