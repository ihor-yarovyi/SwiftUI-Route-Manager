//
//  OrderView.swift
//  RouterTest
//
//  Created by Ihor Yarovyi on 03.01.2022.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject
    var routeManager: RouteManager
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: OrderDetails(),
                    tag: .orderDetails,
                    selection: $routeManager[for: .orderDetails]
                ) { EmptyView() }.isDetailLink(false)
                Button("Order Details") {
                    routeManager.select(.orderDetails)
                }
            }
            .navigationBarTitle("Order")
            .onAppear {
                routeManager.unselect(.orderDetails)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
