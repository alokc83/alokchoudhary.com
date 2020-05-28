//
//  OrderListView.swift
//  DonsPizza
//
//  Created by Alok Choudhary on 1/28/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            HStack(alignment:.firstTextBaseline) {
                Image("food2")
                Text("Pizza")
                Spacer()
                Text("$ 0.00")
            }
            //Spacer()
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
    }
}
