//
//  UIATheme.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/21/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

enum UIATheme: Int {
    case `default`, dark, graphical
    
    private enum Keys {
        static let selectedTheme = "SelectedTheme"
    }
    
    static var current: UIATheme {
        let storedTheme = UserDefaults.standard.integer(forKey: Keys.selectedTheme)
        return UIATheme(rawValue: storedTheme) ?? .default
    }
    
    var mainColor: UIColor {
        switch self {
        case .default:
            return UIColor(red: 87.0/255.0, green: 188.0/255.0, blue: 95.0/255.0, alpha: 1.0)
        case .dark:
            return UIColor(red: 255.0/255.0, green: 115.0/255.0, blue: 50.0/255.0, alpha: 1.0)
        case .graphical:
            return UIColor(red: 10.0/255.0, green: 10.0/255.0, blue: 10.0/255.0, alpha: 1.0)
        }
    }
    
    func apply() {
        UserDefaults.standard.set(rawValue, forKey: Keys.selectedTheme)
        UserDefaults.standard.synchronize()
        
        // Prior to iOS 13 way 
       // UIApplication.shared.delegate?.window??.tintColor = mainColor
        
        // iOS 13 way
        UIApplication.shared.windows.first?.tintColor = mainColor
        
        customizedTheNavigationBar()
        customizeTabbar()
        customizedSegmentedControl()
        cusomizedSwitch()
        cusomizedStepper()
    }
}

