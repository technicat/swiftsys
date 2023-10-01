//
//  Router.swift
//  
//
//  Created by Philip Chu on 10/1/23.
//

import Foundation

@available(macOS 10.15, *)
public class Router<T>: ObservableObject {

    @Published public var path: [T] = []
    
    public init() {
    }

    public func push(_ route: T) {
        path.append(route)
    }

    public func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
}
