//
//  RootNavigationController.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 06/04/22.
//

import SwiftUI

//Reusable Navigation Controller to be used as the root controller
struct RootNavigationController<RootView: View>: UIViewControllerRepresentable {

    let nav: UINavigationController
    let rootView: RootView

    func makeUIViewController(context: Context) -> UINavigationController {
        let vc = UIHostingController(rootView: rootView)
        nav.addChild(vc)
        return nav
    }

    func updateUIViewController(_ pageViewController: UINavigationController, context: Context) {
    }

}
