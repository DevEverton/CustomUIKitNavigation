//
//  ContentView.swift
//  CustomUIKitNavigation
//
//  Created by Everton Carneiro on 05/04/22.
//

import SwiftUI

struct RootCheckoutView: View {
    var body: some View {
        NavigationView {
            VStack {
                CheckoutCardView(description: "Root checkout screen", buttonImage: Image(systemName: "arrow.forward.circle")) {
                    
                }
            }
            .navigationTitle("Checkout")
        }
        
    }
}

struct CheckoutCardView: View {
    let description: String
    let buttonImage: Image
    let onTap: () -> Void
    
    var body: some View {
        VStack {
            HStack {
                Text(description)
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                Spacer()
            }
            
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
        .background(Color(uiColor: .systemIndigo))
        .foregroundColor(Color.white)
        .cornerRadius(12)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootCheckoutView()
    }
}
