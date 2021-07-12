//
//  CategoryItem.swift
//  AirTagApp
//
//  Created by Ari Supriatna on 11/07/21.
//

import Foundation

struct CategoryItem: Identifiable {
  let id = UUID()
  let name: String
  let iconName: String
}

let listCategoryItem: [CategoryItem] = [
  .init(name: "Devices", iconName: "ipad.and.iphone"),
  .init(name: "Items", iconName: "arkit"),
  .init(name: "Items", iconName: "gamecontroller"),
  .init(name: "Items", iconName: "arkit"),
  .init(name: "Items", iconName: "arkit"),
]
