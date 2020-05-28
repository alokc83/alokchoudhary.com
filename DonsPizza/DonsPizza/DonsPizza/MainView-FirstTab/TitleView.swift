//
//  TitleView.swift
//  DonsPizza
//
//  Created by Alok Choudhary on 1/28/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import SwiftUI


struct TitleView: View {
    var title: String
    var imageName: String
    
    var body: some View {
        HStack {
            Image(imageName)
            Text(title)
                .font(.title)
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "A Title", imageName: "icons8-pizza")
    }
}
