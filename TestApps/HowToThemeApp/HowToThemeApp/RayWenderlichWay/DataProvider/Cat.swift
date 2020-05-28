//
//  Cat.swift
//  HowToThemeApp
//
//  Created by Alok Choudhary on 1/21/20.
//  Copyright © 2020 Mt Aden LLC. All rights reserved.
//


import Foundation

struct Cat {
  let name: String
  let type: String
  let imageName: String
}

// MARK: - Equatable
extension Cat: Equatable {

  static func == (lhs: Cat, rhs: Cat) -> Bool {
    return lhs.name == rhs.name && lhs.type == rhs.type
  }
}

