//
//  ViewFactory.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 11/04/22.
//

import SwiftUI

protocol ViewFactory {
    func makeView<T: View>(_ view: T, withNavigationTitle title: String) -> UIViewController
}
