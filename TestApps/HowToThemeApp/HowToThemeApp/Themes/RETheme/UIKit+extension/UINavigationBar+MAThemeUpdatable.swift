//
//  UINavigationBar+MAThemeUpdatable.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/23/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

extension UINavigationBar {

    // MARK: - MAThemeUpdatable

    func updateColors(for theme: MATheme) {
        let barStyle: UIBarStyle = {
            switch theme {
            case .light:
                return .default
            case .dark:
                return .blackTranslucent
            }
        }()
        self.barStyle = barStyle
    }
}

