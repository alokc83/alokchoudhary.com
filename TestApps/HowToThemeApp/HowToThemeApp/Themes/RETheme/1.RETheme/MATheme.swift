//
//  MATheme.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/23/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

/// The theme for which to configure the appearance of views.
///
/// - light: A bright theme using primarily light colors.
/// - dark: A dim theme using primarily dark colors.
public enum MATheme {
    case light
    case dark
}

/// A protocol which denotes types which can update their colors.
protocol MAThemeUpdatable {
    
    /// The theme for which to update colors.
    var theme: MATheme { get set }
    
    /// A function that is called when colors should be updated.
    ///
    /// - Parameter theme: The theme for which to update colors.
    func updateColors(for theme: MATheme)
}
