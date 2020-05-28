//
//  UIATheme+SegmentedControl.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/22/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

extension UIATheme {
    
    internal func customizedSegmentedControl() {
        let controlBackground = UIImage(named: "controlBackground")?
          .withRenderingMode(.alwaysTemplate)
          .resizableImage(withCapInsets: UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3))

        let controlSelectedBackground = UIImage(named: "controlSelectedBackground")?
          .withRenderingMode(.alwaysTemplate)
          .resizableImage(withCapInsets: UIEdgeInsets(top: 3, left: 3, bottom: 3, right: 3))

        UISegmentedControl.appearance().setBackgroundImage(controlBackground,
                                                           for: .normal,
                                                           barMetrics: .default)
        UISegmentedControl.appearance().setBackgroundImage(controlSelectedBackground,
                                                           for: .selected,
                                                           barMetrics: .default)
    }

}
