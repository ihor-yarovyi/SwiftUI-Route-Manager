//
//  RouterManager.swift
//  RouterTest
//
//  Created by Ihor Yarovyi on 03.01.2022.
//

import SwiftUI

enum Route: Int, Hashable {
    case signUp
    case restorePassword
    case orderDetails
}

final class RouteManager: ObservableObject {
    @Published
    private var routers: [Int: Route] = [:]
    
    subscript(for route: Route) -> Route? {
        get {
            routers[route.rawValue]
        }
        set {
            routers[route.rawValue] = route
        }
    }
    
    func select(_ route: Route) {
        routers[route.rawValue] = route
    }
    
    func unselect(_ route: Route) {
        routers[route.rawValue] = nil
    }
}
