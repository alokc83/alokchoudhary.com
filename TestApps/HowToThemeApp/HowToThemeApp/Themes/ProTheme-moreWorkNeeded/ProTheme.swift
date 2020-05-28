//
//  ProTheme.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/22/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//


// Kind of sropping this theme idea as its asking me sub classing every single class even before I do something with apply method.
// even  though I made appleToUIKit() which partially themeing the app.

/// https://basememara.com/protocol-oriented-themes-for-ios-apps/

import Foundation
import UIKit

protocol ProTheme {
    var tint: UIColor { get }
    var secondaryTint: UIColor { get }
    
    var backgroundColor: UIColor { get }
    var separatorColor: UIColor { get }
    var selectionColor: UIColor { get }
    
    var labelColor: UIColor { get }
    var secondaryLabelColor: UIColor { get }
    var subtleLabelColor: UIColor { get }
    
    var barStyle: UIBarStyle { get }
    
    //for application: UIApplication
    func apply()
    func extend()
    func applyToUIKit()
}

extension ProTheme {
    func apply1() {
        AppLabel.appearance().textColor = .red
        AppSubhead.appearance().textColor = .purple
        AppFootnote.appearance().textColor = .orange
         
        AppButton.appearance().setTitleColor(.green, for: .normal)
        AppButton.appearance().layer.borderColor = UIColor.green.cgColor
        AppButton.appearance().layer.borderWidth = 1
        AppButton.appearance().layer.cornerRadius = 3
    }
}
