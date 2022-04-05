//
//  CustomUIKitNavigationApp.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 05/04/22.
//

import SwiftUI

@main
struct CustomUIKitNavigationApp: App {
    
    @StateObject private var nav = CustomNavigationController()
    @StateObject private var router = CheckoutViewsRouter()
    
    var body: some Scene {
        WindowGroup {
            RootNavigationController(rootView: RootCheckoutView())
                .environmentObject(nav.checkoutNavigationController)
                .environmentObject(router)
                .onAppear {
                    router.nav = nav.checkoutNavigationController
                }
        }
        
    }
}

extension UINavigationController: ObservableObject {}

