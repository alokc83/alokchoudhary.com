//
//  UIATheme+Tabbar.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/22/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

extension UIATheme {
    var tabBarBackgroundImage: UIImage? {
      return self == .graphical ? UIImage(named: "tabBarBackground") : nil
    }
    
    internal func customizeTabbar() {
        UITabBar.appearance().barStyle = barStyle
        UITabBar.appearance().backgroundImage = tabBarBackgroundImage
            
        let tabIndicator = UIImage(named: "tabBarSelectionIndicator")?.withRenderingMode(.alwaysTemplate)
        let tabResizableIndicator = tabIndicator?.resizableImage(
          withCapInsets: UIEdgeInsets(top: 0, left: 2.0, bottom: 0, right: 2.0))
        UITabBar.appearance().selectionIndicatorImage = tabResizableIndicator
    }
}
