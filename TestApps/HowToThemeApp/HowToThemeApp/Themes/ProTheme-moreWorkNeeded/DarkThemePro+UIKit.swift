//
//  DarkThemePro+UIKit.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/23/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

extension DarkThemePro {
    func extend() {
        extendUISegmentedControl()
        extendingUIButton()
    }
    
    fileprivate func extendUISegmentedControl() {
        UISegmentedControl.appearance().backgroundColor = tint
        UISegmentedControl.appearance().setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor: backgroundColor],
            for: .normal)
        
        UISegmentedControl.appearance().setTitleTextAttributes(
            [NSAttributedString.Key.foregroundColor: backgroundColor],
            for: .selected)
    }
    
    fileprivate func extendingUIButton() {
        UIButton.appearance(whenContainedInInstancesOf: [UICollectionViewCell.self])
            .setTitleColor(backgroundColor, for: .normal)
    }
}
