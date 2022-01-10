//
//  OrderDetailsFlow.swift
//  RouterTest
//
//  Created by Ihor Yarovyi on 03.01.2022.
//

import SwiftUI

struct OrderDetails: View {
    @State
    private var isActive: Bool = false
    
    var body: some View {
        VStack {
            NavigationLink(
                isActive: $isActive,
                destination: { OrderDetails2() },
                label: { EmptyView() }
            ).isDetailLink(false)
            Button("Order Details2") {
                isActive = true
            }
        }.navigationTitle("Order Details")
    }
}

struct OrderDetails2: View {
    @EnvironmentObject
    var routeManager: RouteManager
    
    var body: some View {
        VStack {
            Button("Pop to Root") {
                routeManager.unselect(.orderDetails)
            }
        }.navigationTitle("Order Details2")
    }
}
