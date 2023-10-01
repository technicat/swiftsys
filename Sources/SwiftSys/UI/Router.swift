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

    func push(_ route: T) {
        path.append(route)
    }

    func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
}
