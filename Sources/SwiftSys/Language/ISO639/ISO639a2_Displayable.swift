//
//  Created by Philip Chu on 4/4/23.
//

extension ISO639a2: Displayable {

    public var display: String {
       // ISO639a2.names[self] ?? self.rawValue
        // langName provides localization
        Sys.langName(self.rawValue) ?? ISO639a2.names[self] ?? self.rawValue
    }
}
