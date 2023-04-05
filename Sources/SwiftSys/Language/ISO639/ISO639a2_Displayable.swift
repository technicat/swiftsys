//
//  Created by Philip Chu on 4/4/23.
//

extension ISO639a2: Displayable {

    public var display: String {
        // langName provides localization
        self.rawValue.languageName ?? ISO639a2.names[self] ?? self.rawValue
    }
}
