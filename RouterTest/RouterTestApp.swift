//
//  RouterTestApp.swift
//  RouterTest
//
//  Created by Ihor Yarovyi on 03.01.2022.
//

import SwiftUI

@main
struct RouterTestApp: App {
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(RouteManager())
        }
    }
}
