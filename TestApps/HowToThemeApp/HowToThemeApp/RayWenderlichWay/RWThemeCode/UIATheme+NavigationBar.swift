//
//  UIATheme+NavigationBar.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/22/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

extension UIATheme {

    var barStyle: UIBarStyle {
      switch self {
      case .default, .graphical:
        return .default
      case .dark:
        return .black
      }
    }
      
    var navigationBackgroundImage: UIImage? {
      return self == .graphical ? UIImage(named: "navBackground") : nil
    }
    
    internal func customizedTheNavigationBar() {
        UINavigationBar.appearance().barStyle = barStyle
        UINavigationBar.appearance().setBackgroundImage(navigationBackgroundImage, for: .default)
    }

}
