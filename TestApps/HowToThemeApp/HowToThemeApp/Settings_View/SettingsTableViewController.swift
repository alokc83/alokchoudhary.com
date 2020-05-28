//
//  SettingsTableViewController.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/21/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

  // MARK: - IBOutlets
  @IBOutlet weak var themeSelector: UISegmentedControl!
  @IBOutlet weak var applyButton: UIButton!

  // MARK: - View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    themeSelector.selectedSegmentIndex = UIATheme.current.rawValue
    
    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .done, target: self, action: #selector(dismissAnimated))
  }
}

// MARK: - Actions
private extension SettingsTableViewController {

  @objc func dismissAnimated() {
    dismiss(animated: true)
  }

  @IBAction func applyTheme(_ sender: UIButton) {
    if let selectedTheme = UIATheme(rawValue: themeSelector.selectedSegmentIndex) {
      selectedTheme.apply()
    }

    dismissAnimated()
  }
}

