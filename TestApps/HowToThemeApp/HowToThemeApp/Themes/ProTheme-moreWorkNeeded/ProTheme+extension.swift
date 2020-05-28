//
//  ProTheme+extension.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/22/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import Foundation
import UIKit

extension ProTheme {
    //for application: UIApplication
    func apply() {
        UIApplication.shared.windows.first?.tintColor = tint
        
        UITabBar.appearance().barStyle = barStyle
        
        UINavigationBar.appearance().barStyle = barStyle
        UINavigationBar.appearance().tintColor = tint
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: labelColor
        ]
        
        if #available(iOS 11.0, *) {
            UINavigationBar.appearance().largeTitleTextAttributes = [
                .foregroundColor: labelColor
            ]
        }
        
        UICollectionView.appearance().backgroundColor = backgroundColor
        UITableView.appearance().backgroundColor = backgroundColor
        UITableView.appearance().separatorColor = separatorColor
        UITableViewCell.appearance().backgroundColor = .clear
        //UITableViewCell.appearance().selectionColor = selectionColor
        
        UIView.appearance(whenContainedInInstancesOf: [UITableViewHeaderFooterView.self])
            .backgroundColor = selectionColor
        
        UILabel.appearance(whenContainedInInstancesOf: [UITableViewHeaderFooterView.self])
            .textColor = secondaryLabelColor
        
        AppLabel.appearance().textColor = labelColor
        AppSubhead.appearance().textColor = secondaryLabelColor
        AppFootnote.appearance().textColor = subtleLabelColor
        
        AppButton.appearance().layer.borderColor = tint.cgColor
        AppButton.appearance().setTitleColor(tint, for: .normal)
        AppButton.appearance().layer.borderWidth = 1
        AppButton.appearance().layer.cornerRadius = 3
        
        AppDestructiveButton.appearance().layer.borderWidth = 0
        AppDestructiveButton.appearance().setTitleColor(labelColor, for: .normal)
        AppDestructiveButton.appearance().backgroundColor = tint
        
        AppSwitch.appearance().tintColor = tint
        
        AppView.appearance().backgroundColor = backgroundColor
        AppSeparator.appearance().backgroundColor = separatorColor
        AppSeparator.appearance().alpha = 0.5
    }
    
    func applyToUIKit() {
        UIApplication.shared.windows.first?.tintColor = tint
        
        UITabBar.appearance().barStyle = barStyle
        
        UINavigationBar.appearance().barStyle = barStyle
        UINavigationBar.appearance().tintColor = tint
        UINavigationBar.appearance().titleTextAttributes = [
            .foregroundColor: labelColor
        ]
        
        if #available(iOS 11.0, *) {
            UINavigationBar.appearance().largeTitleTextAttributes = [
                .foregroundColor: labelColor
            ]
        }
        
        UICollectionView.appearance().backgroundColor = backgroundColor
        UITableView.appearance().backgroundColor = backgroundColor
        UITableView.appearance().separatorColor = separatorColor
        UITableViewCell.appearance().backgroundColor = .clear
        //UITableViewCell.appearance().selectionColor = selectionColor
        
        UIView.appearance(whenContainedInInstancesOf: [UITableViewHeaderFooterView.self])
            .backgroundColor = selectionColor
        
        UILabel.appearance(whenContainedInInstancesOf: [UITableViewHeaderFooterView.self])
            .textColor = secondaryLabelColor
        
        UILabel.appearance().textColor = labelColor
        //            AppSubhead.appearance().textColor = secondaryLabelColor
        //            AppFootnote.appearance().textColor = subtleLabelColor
        
        UIButton.appearance().layer.borderColor = tint.cgColor
        UIButton.appearance().setTitleColor(tint, for: .normal)
        UIButton.appearance().layer.borderWidth = 1
        UIButton.appearance().layer.cornerRadius = 3
        
        //            AppDestructiveButton.appearance().layer.borderWidth = 0
        //            AppDestructiveButton.appearance().setTitleColor(labelColor, for: .normal)
        //            AppDestructiveButton.appearance().backgroundColor = tint
        
        UISwitch.appearance().onTintColor = tint.withAlphaComponent(0.3)
        UISwitch.appearance().thumbTintColor = tint
        //UIView.appearance().backgroundColor = backgroundColor
        //            AppSeparator.appearance().backgroundColor = separatorColor
        //            AppSeparator.appearance().alpha = 0.5
        
        extend()
    }
    
    
    func extend() {
        // Optionally extend theme
    }
}
