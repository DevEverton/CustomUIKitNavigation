//
//  ContentView.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 05/04/22.
//

import SwiftUI
import UIKit

struct RootCheckoutView: View {
    @EnvironmentObject var router: CheckoutViewsRouter

    var body: some View {
        VStack {
            CheckoutCardView(description: "Root Checkout Screen", buttonImage: Image(systemName: "arrow.forward.circle"), color: .blue) {
                router.pushTo(view: CheckoutViews.shared.makeView(CheckoutView2(), withNavigationTitle: "Checkout 2"))
            }
        }
        
    }
}

struct CheckoutView2: View {
    @EnvironmentObject var router: CheckoutViewsRouter
    
    var body: some View {
        VStack {
            CheckoutCardView(description: "Checkout Screen 2", buttonImage: Image(systemName: "arrow.forward.circle"), color: .green) {
                router.pushTo(view: CheckoutViews.shared.makeView(CheckoutView3(), withNavigationTitle: "Checkout 3"))
            }

        }
        
    }
}

struct CheckoutView3: View {
    @EnvironmentObject var router: CheckoutViewsRouter

    var body: some View {
        VStack {
            CheckoutCardView(description: "Checkout Screen 3", buttonImage: Image(systemName: "arrow.forward.circle"), color: .red) {
                router.pushTo(view: CheckoutViews.shared.makeView(CheckoutView4(), withNavigationTitle: "Checkout 4"))
            }

        }
    }
}

struct CheckoutView4: View {
    @EnvironmentObject var router: CheckoutViewsRouter

    var body: some View {
        VStack {
            CheckoutCardView(description: "Checkout Screen 4", buttonImage: Image(systemName: "arrow.counterclockwise.circle.fill"), color: .orange) {
                router.popToRoot()

            }
        }
    }
}


struct CheckoutCardView: View {
    let description: String
    let buttonImage: Image
    let color: Color
    let onTap: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                Text(description)
                Image(systemName: "cart")
                Spacer()
            }
            .font(.system(size: 16, weight: .bold, design: .rounded))
            Spacer()
            HStack {
                Spacer()
                Button {
                    onTap()
                } label: {
                    buttonImage
                        .font(.system(size: 30, weight: .regular))
                }
            }
        }
        .padding()
        .frame(width: 350, height: 150)
        .background(color)
        .foregroundColor(Color.white)
        .cornerRadius(12)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootCheckoutView()
    }
}
