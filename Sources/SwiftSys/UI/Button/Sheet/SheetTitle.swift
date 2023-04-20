//
//  Created by Philip Chu on 4/20/23.
//

import Foundation
import SwiftUI

@available(macOS 10.15.0, *)
public struct SheetTitle: View {
    
    let title: String
    
    public var body: some View {
        Text(LocalizedStringKey(title)).font(.headline)
    }
}
