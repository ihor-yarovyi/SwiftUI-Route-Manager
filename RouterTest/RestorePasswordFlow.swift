//
//  RestorePasswordFlow.swift
//  RouterTest
//
//  Created by Ihor Yarovyi on 03.01.2022.
//

import SwiftUI

struct RestorePassword: View {
    @State
    private var isActive: Bool = false
    
    var body: some View {
        VStack {
            NavigationLink(
                isActive: $isActive,
                destination: { RestorePassword2() },
                label: { EmptyView() }
            ).isDetailLink(false)
            Button("Restore Password2") {
                isActive = true
            }
        }
    }
}

struct RestorePassword2: View {
    @State
    private var isActive: Bool = false
    
    @Environment(\.presentationMode)
    private var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            NavigationLink(
                isActive: $isActive,
                destination: { RestorePassword3() },
                label: { EmptyView() }
            ).isDetailLink(false)
            Button("Pop Back") {
                presentationMode.wrappedValue.dismiss()
            }
            Button("Restore Password3") {
                isActive = true
            }
        }.navigationTitle("Restore Password2")
    }
}

struct RestorePassword3: View {
    @EnvironmentObject
    var routeManager: RouteManager
    
    var body: some View {
        VStack {
            Button("Pop To Root") {
                routeManager.unselect(.restorePassword)
            }
        }.navigationTitle("Restore Password3")
    }
}
