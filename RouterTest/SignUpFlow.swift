//
//  SignUpFlow.swift
//  RouterTest
//
//  Created by Ihor Yarovyi on 03.01.2022.
//

import SwiftUI

struct SignUp: View {
    @State
    private var isActive: Bool = false
    
    var body: some View {
        VStack {
            NavigationLink(
                isActive: $isActive,
                destination: { SignUp2() },
                label: { EmptyView() }
            ).isDetailLink(false)
            Button("Sign Up2") {
                isActive = true
            }
        }.navigationTitle("Sign Up")
    }
}

struct SignUp2: View {
    @EnvironmentObject
    var routeManager: RouteManager
    
    var body: some View {
        VStack {
            Button("Pop to Root") {
                routeManager.unselect(.signUp)
            }
        }.navigationTitle("Sign Up2")
    }
}
