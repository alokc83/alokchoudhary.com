//
//  StarViewController.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/23/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

class StarViewController: UIViewController {
    @IBOutlet fileprivate weak var lightButton: UIButton!
    @IBOutlet fileprivate weak var darkButton: UIButton!
    
    var theme: MATheme = .light {
        didSet {
            guard oldValue != theme else { return }
            updateColors(for: theme)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addDidChangeColorThemeObserver()
        //setUpNavigationTitle()
        setUpButtons()
        updateColors(for: theme)
    }
    
    func setUpButtons() {
        lightButton.setUpButton()
        darkButton.setUpButton()
    }
    
    @IBAction func lightButtonTapped(sender: UIButton) {
        MAThemeNotification.didChangeColorTheme.post(userInfo: MATheme.light)
    }
    
    @IBAction func darkButtonTapped(sender: UIButton) {
        MAThemeNotification.didChangeColorTheme.post(userInfo: MATheme.dark)
    }
    
}

extension StarViewController: MAThemeUpdatable {
    
    func updateColors(for theme: MATheme) {
        view.backgroundColor = .contentBackground(for: theme)
        //imageView.tintColor = .brand(for: theme)
        lightButton.configureColors(for: theme)
        darkButton.configureColors(for: theme)

        navigationController?.navigationBar.updateColors(for: theme)
        tabBarController?.tabBar.updateColors(for: theme)
    }
}






