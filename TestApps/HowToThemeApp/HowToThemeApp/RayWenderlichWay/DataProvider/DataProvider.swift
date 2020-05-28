//
//  DataProvider.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/21/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//

import Foundation

class DataProvider {

  // MARK: - Properties
  static let sharedProvider = DataProvider()
  
  let cats: [Cat]
  private(set) var adoptedCats: [Cat] = []

  // MARK: - Initializers
  init() {
    self.cats = [Cat(name: "Mickey", type: "South Asian Panther", imageName: "8"),
                 Cat(name: "Roger", type: "Couger", imageName: "1"),
                 Cat(name: "Jane", type: "Bob Cat", imageName: "2"),
                 Cat(name: "Martin", type: "Afrcan Panther", imageName: "3"),
                 Cat(name: "Hammer", type: "Panther", imageName: "4"),
                 Cat(name: "James", type: "Tiger", imageName: "5"),
                 Cat(name: "Goofy", type: "Jaguar", imageName: "6"),
                 Cat(name: "Emily", type: "Snow Leopard", imageName: "7")]
  }

  // MARK: - Internal
  func adopt(cat: Cat) {
    guard !adoptedCats.contains(cat) else { return }

    adoptedCats.append(cat)
  }
}

