//
//  FLThemeManager.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/23/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import Foundation

class ThemesManager {

    var theme: FLTheme?
    
    static var shared : ThemesManager = {
        let themeneManager  = ThemesManager()
        return themeneManager
    }()
    
    func setTheme(theme : FLTheme){
        self.theme = theme
    }
}
