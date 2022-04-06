//
//  CheckoutNavigation.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 05/04/22.
//

import UIKit
import SwiftUI

protocol CheckoutViewsFactoryInjected {}

extension CheckoutViewsFactoryInjected {
    var factory: CheckoutViewsFactory { CheckoutViewsFactory() }
}

class CheckoutViewsFactory {
    let checkoutScreen2 = UIHostingController(rootView: CheckoutView2())
    let checkoutScreen3 = UIHostingController(rootView: CheckoutView3())
    let checkoutScreen4 = UIHostingController(rootView: CheckoutView4())
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


