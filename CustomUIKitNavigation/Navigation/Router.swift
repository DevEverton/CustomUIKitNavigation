//
//  Router.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 06/04/22.
//

import UIKit
import Combine

protocol Router: ObservableObject {
    var nav: UINavigationController? { get set }
    func pushTo(view: UIViewController)
    func popTo(view: UIViewController)
    func popToRoot()
}

extension Router {
    func popToRoot() {
        nav?.popToRootViewController(animated: true)
    }
}
