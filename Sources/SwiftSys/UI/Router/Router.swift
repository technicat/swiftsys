//
//  Router.swift
//
//
//  Created by Philip Chu on 10/1/23.
//

import Foundation

@available(macOS 10.15, *)
public class Router<T: Equatable>: ObservableObject {

    @Published public var path: [T] = []

    public init() {
    }

    public func push(_ route: T) {
        path.append(route)
    }

    public func pushNew(_ route: T) {
        if path.last != route {
            push(route)
        }
    }

    public func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }

    func clear() {
        path = []
    }
}
