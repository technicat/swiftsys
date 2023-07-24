//  Created by Philip Chu on 7/31/15.
//  Copyright (c) 2015 Technicat. All rights reserved.

public enum Chinese: String, CaseIterable, Codable {

    case cantonese, mandarin, simplified
}

extension Chinese: Displayable {
    public var display: String {
        switch self {
        case .cantonese: return "Cantonese"
        case .mandarin: return "Mandarin"
        case .simplified: return "Simplified"
        }
    }

}
