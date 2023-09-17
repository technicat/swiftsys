//
//  File.swift
//  
//
//  Created by Philip Chu on 9/16/23.
//

import Foundation
import SwiftUI

@available(macOS 12.0, *)
@available(iOS 15.0, *)
public struct CancelOffButton: View {

    @Binding var doit: Bool
    
    public init(_ doit: Binding<Bool>) {
        _doit = doit
    }

    public var body: some View {
        Button("cancel", role: .cancel) {
            doit = false
        }
    }
}

