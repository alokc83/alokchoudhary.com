//
//  UIButton+MAThemeUpdatable.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/23/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

public extension UIButton {
    
    func setUpButton() {
        layer.borderWidth = 2.0
        layer.cornerRadius = 4.0
    }
    
    func configureColors(for theme: MATheme) {
        setTitleColor(.normalButton(for: theme), for: .normal)
        setTitleColor(.highlightedButton(for: theme), for: .highlighted)
        setTitleColor(.disabledButton(for: theme), for: .disabled)
        
        layer.borderColor = UIColor.normalButton(for: theme).cgColor
    }
}

