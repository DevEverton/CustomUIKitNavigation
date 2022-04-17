//
//  ViewBuilder.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 11/04/22.
//

import SwiftUI

protocol ViewBuilder {
    func makeView<T: View>(_ view: T, withNavigationTitle title: String) -> UIViewController
}
