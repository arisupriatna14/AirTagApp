//
//  ContentView.swift
//  AirTagApp
//
//  Created by Ari Supriatna on 11/07/21.
//

import SwiftUI

enum Tab {
  case home
  case wallet
  case buy
  case profile
}

struct ContentView: View {
  @State private var selection: Tab = .home
  
  var body: some View {
    HomeView()
      .safeAreaInset(edge: .bottom) {
        HStack(alignment: .center) {
          Spacer()
          Button {
            self.selection = .home
          } label: {
            TabBarIconView(imageName: "location.fill.viewfinder", color: self.selection == .home ? .black : .gray)
          }
          Spacer()
          Button {
            self.selection = .wallet
          } label: {
            TabBarIconView(imageName: "ipad.and.iphone", color: self.selection == .wallet ? .black : .gray)
          }
          Spacer()
          Button {
            self.selection = .buy
          } label: {
            TabBarIconView(imageName: "arkit", color: self.selection == .buy ? .black : .gray)
          }
          Spacer()
          Button {
            self.selection = .profile
          } label: {
            TabBarIconView(imageName: "circle.grid.2x2", color: self.selection == .profile ? .black : .gray)
          }
          Spacer()
        }
        .padding(.bottom, 16)
        .frame(width: UIScreen.main.bounds.width, height: 100)
        .background(.white)
      }
      .edgesIgnoringSafeArea(.bottom)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct TabBarIconView: View {
  
  var imageName: String
  var color: Color
  
  var body: some View {
    VStack(spacing: 8) {
      Image(systemName: imageName)
        .font(.system(size: 20))
    }
    .foregroundColor(color)
  }
}
