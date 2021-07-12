//
//  Item.swift
//  AirTagApp
//
//  Created by Ari Supriatna on 11/07/21.
//

import Foundation

struct Item: Identifiable {
  let id = UUID()
  let name: String
  let image: String
  let batteryText: String
  let batteryImageName: String
}

let listItem: [Item] = [
  .init(name: "Ari's iPhone Pro Max", image: "📱", batteryText: "100%", batteryImageName: "battery.100"),
  .init(name: "Ari's AirPods Max", image: "🎧", batteryText: "75%", batteryImageName: "battery.75"),
  .init(name: "Ari's Scrooter", image: "🛵", batteryText: "50%", batteryImageName: "battery.50"),
  .init(name: "Ari's Scrooter 2", image: "🛴", batteryText: "25%", batteryImageName: "battery.25"),
  .init(name: "Ari's Bag", image: "🎒", batteryText: "75%", batteryImageName: "battery.75")
]
