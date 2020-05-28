//
//  FLTheme.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/23/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

// Quite a useless way (its here so that we know what no to do)
// https://medium.com/flawless-app-stories/protocol-based-themes-in-ios-apps-820971763837

import UIKit

protocol FLTheme {
    var backgroundColor : UIColor { get }
    var secondaryBackgroundColor : UIColor { get }
    var heading : UIColor { get }
    var subHeading : UIColor { get }
    var sepratorColor : UIColor { get }
    var tintColor : UIColor { get }
}
