//
//  UIATheme+UITableViewCell.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/22/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

extension UIATheme {
    var backgroundColor: UIColor {
      switch self {
      case .default, .graphical:
        return UIColor.white
      case .dark:
        return UIColor(white: 0.4, alpha: 1.0)
      }
    }

    var textColor: UIColor {
      switch self {
      case .default, .graphical:
        return UIColor.black
      case .dark:
        return UIColor.white
      }
    }
    
    internal func customizedTableViewCell() {
        UITableViewCell.appearance().backgroundColor = backgroundColor
        UILabel.appearance(whenContainedInInstancesOf: [UITableViewCell.self]).textColor = textColor
    }
}

