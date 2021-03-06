//
//  CheckoutNavigation.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 05/04/22.
//

import UIKit
import SwiftUI

final class CheckoutView: ViewBuilder {
    
    static let builder = CheckoutView()
    
    private init() {}
    
    func makeView<T: View>(_ view: T, withNavigationTitle title: String) -> UIViewController {
        CustomHostingController(rootView: view, navigationBarTitle: title, navigationBarHidden: false)
    }
}

final class CheckoutViewsRouter: Router {
    var nav: UINavigationController?
    
    func pushTo(view: UIViewController) {
        nav?.pushViewController(view, animated: true)
    }
    
    func popTo(view: UIViewController) {
        nav?.popToViewController(view, animated: true)
    }
}

