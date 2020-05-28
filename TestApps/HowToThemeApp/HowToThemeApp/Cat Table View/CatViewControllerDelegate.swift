//
//  CatViewControllerDelegate.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/21/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

protocol CatViewControllerDelegate: class {
  func catViewController(_ controller: CatViewController, didAdoptCat cat: Cat)
}

class CatViewController: UIViewController {

  // MARK: - IBOutlets
  @IBOutlet weak var catImageView: UIImageView!

  // MARK: - Properties
  weak var delegate: CatViewControllerDelegate?
  var cat: Cat!

  // MARK: - View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = cat.name
    
    catImageView.image = UIImage(named: cat.imageName)
    
    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Adopt", style: .plain, target: self, action: #selector(adopt))
  }
}

// MARK: - Actions
private extension CatViewController {

  @objc func adopt() {
    performSegue(withIdentifier: "ShowAdopt", sender: nil)
    delegate?.catViewController(self, didAdoptCat: cat)
  }
}
