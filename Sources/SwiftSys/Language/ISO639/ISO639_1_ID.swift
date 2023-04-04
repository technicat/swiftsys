//
//  Created by Philip Chu on 4/4/23.
//

extension ISO639_1: Identifiable {
    public var id: String {
        self.rawValue
    }
}
