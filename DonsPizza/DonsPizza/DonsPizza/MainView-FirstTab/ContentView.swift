//
//  ContentView.swift
//  DonsPizza
//
//  Created by Alok Choudhary on 1/27/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            
            //Header Section
            LogoHeaderView()
            Spacer()
            //Order Pizza Section header
            TitleView(title: "Order Pizza", imageName: "icons8-pizza")
            
            Spacer()
            Text("Menu")
            
            // pIzaa list view
            PizzaListView()
            
            // Your order Section
            //Text("Your order").font(.title)
            TitleView(title: "Your order", imageName: "icons8-purchase_order")
            
            OrderListView()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


