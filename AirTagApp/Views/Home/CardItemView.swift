//
//  CardItemView.swift
//  AirTagApp
//
//  Created by Ari Supriatna on 11/07/21.
//

import SwiftUI

struct CardItemView: View {
  
  var item: Item
  
  var body: some View {
    VStack(alignment: .center, spacing: 0) {
      HStack {
        VStack(alignment: .leading, spacing: 8) {
          Text(item.name)
            .fontWeight(.bold)
          
          HStack {
            Image(systemName: "car")
            Text("8 min").font(.system(size: 14))
            
            Image(systemName: "figure.walk")
            Text("13 min").font(.system(size: 14))
            
            Image(systemName: item.batteryImageName)
            Text(item.batteryText).font(.system(size: 14))
          }
        }

        Text(item.image)
          .font(.system(size: 80, weight: .bold))
          .offset(y: -45)
      }
      
      HStack(alignment: .center, spacing: 24) {
        HStack {
          Image(systemName: "play.circle.fill")
            .foregroundColor(.purple)
            .font(.system(size: 24))
          Text("Play Sound")
        }
        .padding(.all)
        .background(.gray.opacity(0.1))

        HStack {
          Image(systemName: "location.circle.fill")
            .foregroundColor(.green)
            .font(.system(size: 24))
          Text("832.9 ft")
        }
        .padding(.all)
        .background(.gray.opacity(0.1))
      }
      .padding(.vertical)
      
    }
    .padding(24)
    .frame(width: UIScreen.main.bounds.width - 48, height: 200)
    .background(.white, in: RoundedRectangle(cornerRadius: 40))
    .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 10)
  }
}

struct CardItemView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color.black.opacity(0.5)

      CardItemView(item: listItem[0])
    }
  }
}
