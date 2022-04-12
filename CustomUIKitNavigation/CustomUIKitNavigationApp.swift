//
//  CustomUIKitNavigationApp.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 05/04/22.
//

import SwiftUI

@main
struct CustomUIKitNavigationApp: App {
    
    let nav = NavigationControllers()
    let router = CheckoutViewsRouter()
    
    var body: some Scene {
        WindowGroup {
            RootNavigationController(nav: nav.checkoutNavigationController, rootView: RootCheckoutView(), navigationBarTitle: "Root")
                .environmentObject(router)
                .onAppear {
                    router.nav = nav.checkoutNavigationController
                }
        }
        
    }
}

extension UINavigationController: ObservableObject {}

