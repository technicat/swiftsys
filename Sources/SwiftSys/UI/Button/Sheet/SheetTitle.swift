//
//  Created by Philip Chu on 4/20/23.
//

import Foundation
import SwiftUI

@available(macOS 10.15.0, *)
struct SheetTitle: View {
    
    let title: String
    
    var body: some View {
        Text(LocalizedStringKey(title)).font(.headline)
    }
}
