//
//  CheckoutNavigation.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 05/04/22.
//

import Foundation
import UIKit
import SwiftUI

class CheckoutViewsFactory {
    static let checkoutScreen2 = UIHostingController(rootView: CheckoutView2())
    static let checkoutScreen3 = UIHostingController(rootView: CheckoutView3())
    static let checkoutScreen4 = UIHostingController(rootView: CheckoutView4())
}

class CheckoutViewsRouter: Router {
    var nav: UINavigationController?
    
    func pushTo(view: UIViewController) {
        nav?.pushViewController(view, animated: true)
    }
    
    func popTo(view: UIViewController) {
        nav?.popToViewController(view, animated: true)
    }
}


