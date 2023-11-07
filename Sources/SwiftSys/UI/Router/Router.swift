//
//  Router.swift
//
//
//  Created by Philip Chu on 10/1/23.
//

import Foundation

@available(macOS 14, *)
@available(iOS 17.0, *)
@Observable
public class Router<T: Equatable> {

    public var path: [T] = []

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

    public func clear() {
        path.removeAll()
    }
}
