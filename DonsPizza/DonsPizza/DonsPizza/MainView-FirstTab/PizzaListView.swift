//
//  PizzaListView.swift
//  DonsPizza
//
//  Created by Alok Choudhary on 1/28/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import SwiftUI

struct PizzaListView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            HStack(alignment: .top, spacing: 16) {
                Image("pizza1")
                    .resizable()
                    .scaledToFit()
                    .frame(width:60)
                
                VStack {
                    Text("Avacado Pizza")
                    HStack {
                        ForEach(0..<4) { item in
                            Image(systemName: "star")
                        }
                    }
                    Spacer()
                }
                
                // Spacer()
            }
            
        }
    }
}

struct PizzaListView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaListView()
    }
}
