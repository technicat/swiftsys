//
//  Created by Philip Chu on 4/4/23.
//

import SwiftUI

@available(macOS 11.0, *)
public struct MastoCodePicker: View {

    @Binding var language: MastoCode

    public init (_ language: Binding<MastoCode>) {
        _language = language
    }

    public var body: some View {
        Picker(selection: $language, label: Text("Language")) {
            ForEach(MastoCode.allCases.sorted(by: { $0.display < $1.display })) { lang in
                    Text(lang.display)
            }
        }
    }
}
