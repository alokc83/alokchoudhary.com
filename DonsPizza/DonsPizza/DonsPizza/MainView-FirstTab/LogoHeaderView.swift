//
//  LogoHeaderView.swift
//  DonsPizza
//
//  Created by Alok Choudhary on 1/28/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import SwiftUI

struct LogoHeaderView: View {
    var body: some View {
        ZStack {
            Image("don")
                .resizable()
                .scaledToFit()
            
            Spacer()
            Text("Pizza Company")
                .font(Font.custom("Arial", size: 45))
                .foregroundColor(.init(red: 206/255, green: 0, blue: 20/255))
                .offset(x:0, y:90)
                .font(.largeTitle)
        }
    }
}

struct LogoHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LogoHeaderView()
    }
}
