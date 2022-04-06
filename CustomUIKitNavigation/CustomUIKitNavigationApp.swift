//
//  CustomUIKitNavigationApp.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 05/04/22.
//

import SwiftUI

@main
struct CustomUIKitNavigationApp: App {
    
    @StateObject private var nav = NavigationControllers()
    @StateObject private var router = CheckoutViewsRouter()
    
    var body: some Scene {
        WindowGroup {
            RootNavigationController(nav: nav.checkoutNavigationController, rootView: RootCheckoutView())
                .environmentObject(router)
                .onAppear {
                    router.nav = nav.checkoutNavigationController
                }
        }
        
    }
}

extension UINavigationController: ObservableObject {}

