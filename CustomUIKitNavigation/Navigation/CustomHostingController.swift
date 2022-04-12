//
//  CustomHostingController.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 11/04/22.
//

import SwiftUI

class CustomHostingController<Content>: UIHostingController<AnyView> where Content: View {

    public init(rootView: Content, navigationBarTitle: String, navigationBarHidden: Bool) {
        super.init(rootView: AnyView(rootView.navigationBarHidden(navigationBarHidden)))
        self.title = navigationBarTitle
    }

    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) not implemented")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
