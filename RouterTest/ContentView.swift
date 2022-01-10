//
//  ContentView.swift
//  RouterTest
//
//  Created by Ihor Yarovyi on 03.01.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject
    var routeManager: RouteManager
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: SignUp(),
                    tag: .signUp,
                    selection: $routeManager[for: .signUp]
                ) { EmptyView() }.isDetailLink(false)
                NavigationLink(
                    destination: RestorePassword(),
                    tag: .restorePassword,
                    selection: $routeManager[for: .restorePassword]
                ) { EmptyView() }.isDetailLink(false)
                Button("Sign Up") {
                    routeManager.select(.signUp)
                }
                Button("Restore Password") {
                    routeManager.select(.restorePassword)
                }
            }
            .navigationBarTitle("Navigation")
            .onAppear {
                routeManager.unselect(.signUp)
                routeManager.unselect(.restorePassword)
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
