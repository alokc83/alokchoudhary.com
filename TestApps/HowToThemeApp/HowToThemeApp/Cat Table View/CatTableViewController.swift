//
//  CatTableViewController.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/21/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import UIKit

import UIKit

class CatTableViewController: UITableViewController {

  // MARK: - Properties
  let dataProvider = DataProvider.sharedProvider
    
    var theme: MATheme = .light {
        didSet {
            guard oldValue != theme else { return }
        }
    }


  // MARK: - View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.rowHeight = 110
    
    let titleImageView = UIImageView(image: UIImage(named:"tiger"))
    titleImageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
    titleImageView.contentMode = .scaleAspectFit
    navigationItem.titleView = titleImageView
    
    let searchButton = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(search))
    navigationItem.rightBarButtonItem = searchButton
    
    let settingsButton = UIBarButtonItem(image: UIImage(named:"settings"), style: .plain, target: self, action: #selector(openSettings))
    navigationItem.leftBarButtonItem = settingsButton
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    tableView.reloadData()
  }

  // MARK: - Navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "ShowPet",
      let controller = segue.destination as? CatViewController,
      let tableViewCell = sender as? UITableViewCell,
      let selectedPetIndex = tableView.indexPath(for: tableViewCell)?.row {
        let cat = dataProvider.cats[selectedPetIndex]
        controller.cat = cat
        controller.delegate = self
    }
  }
}

// MARK: - Actions
private extension CatTableViewController {
  
  @objc func search() {
    guard let searchViewController = storyboard?.instantiateViewController(withIdentifier: "SearchTableViewController") else {
      return
    }
    
    searchViewController.modalPresentationStyle = .popover
    searchViewController.modalTransitionStyle = .coverVertical
    searchViewController.popoverPresentationController?.delegate = self
    present(searchViewController, animated: true)
  }
  
  @objc func openSettings() {
    guard let settingsViewController = storyboard?.instantiateViewController(withIdentifier: "SettingsTableViewController") else {
      return
    }
    
    settingsViewController.modalPresentationStyle = .popover
    settingsViewController.modalTransitionStyle = .coverVertical
    settingsViewController.popoverPresentationController?.delegate = self
    present(settingsViewController, animated: true)
  }
}

// MARK: - UITableViewDatasource
extension CatTableViewController {

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dataProvider.cats.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CatCell", for: indexPath)
    let pet = dataProvider.cats[indexPath.row]

    cell.imageView?.image = UIImage(named: pet.imageName)

    cell.imageView?.layer.masksToBounds = true
    cell.imageView?.layer.cornerRadius = 5
    
    cell.detailTextLabel?.text = dataProvider.cats[indexPath.row].type
    
    cell.textLabel?.text = dataProvider.cats[indexPath.row].name
    
    cell.setNeedsLayout()
    
    return cell
  }
}

// MARK: - UIPopoverPresentationControllerDelegate
extension CatTableViewController: UIPopoverPresentationControllerDelegate {

  func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
    return UIModalPresentationStyle.overCurrentContext
  }
  
  func presentationController(_ controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController? {
    return UINavigationController(rootViewController: controller.presentedViewController)
  }
}

//// MARK: - PetViewControllerDelegate
extension CatTableViewController: CatViewControllerDelegate {

  func catViewController(_ controller: CatViewController, didAdoptCat cat: Cat) {
    dataProvider.adopt(cat: cat)
  }
}

// MAThemeUpdatable

private extension CatTableViewController {
    func commonInitialization() {
        registerObservers()
    }
    
    func setUpNavigationTitle() {
        navigationItem.title = "Table View Demo"
    }
    
    func setUpTableView() {
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.delegate = self
    }
    
    func updateDataSource() {
//        dataSource = TableViewDataSource(cellConfiguration: cellCreator.cell, theme: theme)
//        tableView.dataSource = dataSource
    }
    
    func registerObservers() {
        addDidChangeColorThemeObserver()
    }
}
