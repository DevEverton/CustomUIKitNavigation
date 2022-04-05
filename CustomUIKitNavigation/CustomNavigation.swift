//
//  CustomNavigation.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 05/04/22.
//

import Foundation
import UIKit
import SwiftUI

class CustomNavigationController: ObservableObject {
    var checkoutNavigationController = UINavigationController()
}

class CheckoutViewsRouter: ObservableObject {
    
    var nav: UINavigationController?
    
    var checkoutScreen2 = UIHostingController(rootView: CheckoutView2())
    var checkoutScreen3 = UIHostingController(rootView: CheckoutView3())
    var checkoutScreen4 = UIHostingController(rootView: CheckoutView4())

    
    func pushToScreen2() {
        nav?.pushViewController(checkoutScreen2, animated: true)
    }
    
    func pushToScreen3() {
        nav?.pushViewController(checkoutScreen3, animated: true)
    }
    
    func pushToScreen4() {
        nav?.pushViewController(checkoutScreen4, animated: true)
    }
    
    func popToScreen2() {
        nav?.popToViewController(checkoutScreen2, animated: true)
    }
    
    func popToScreen3() {
        nav?.popToViewController(checkoutScreen3, animated: true)
    }
    
    func popToRoot() {
        nav?.popToRootViewController(animated: true)
    }
    
}

struct RootNavigationController<RootView: View>: UIViewControllerRepresentable {

    @EnvironmentObject var nav: UINavigationController
    let rootView: RootView


    func makeUIViewController(context: Context) -> UINavigationController {
        let vc = UIHostingController(rootView: rootView)
        nav.addChild(vc)
        return nav
    }

    func updateUIViewController(_ pageViewController: UINavigationController, context: Context) {
    }

}
