//
//  FLTheme+MainTheme.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/23/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

struct MainTheme: FLTheme {
    var backgroundColor: UIColor = UIColor.init(named: "background")!
    var secondaryBackgroundColor = UIColor.init(named: "secondaryBackground")!
    var heading: UIColor = UIColor.init(named: "heading")!
    var subHeading: UIColor = UIColor.init(named: "subheading")!
    var sepratorColor: UIColor = UIColor.init(named: "separatorColor")!
    var tintColor: UIColor = UIColor.init(named: "tint")!
}

struct SecondaryTheme: FLTheme {
    var backgroundColor: UIColor = UIColor.black
    var secondaryBackgroundColor = UIColor.green
    var heading: UIColor = UIColor.black
    var subHeading: UIColor = UIColor.purple
    var sepratorColor: UIColor = UIColor.red
    var tintColor: UIColor = UIColor.green
}
