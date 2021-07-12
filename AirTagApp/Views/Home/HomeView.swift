//
//  HomeView.swift
//  AirTagApp
//
//  Created by Ari Supriatna on 11/07/21.
//

import SwiftUI

struct HomeView: View {
  
  @State var selection: UUID = UUID()
  @State var showOnboardingView: Bool = true
  
  var body: some View {
    ZStack {
      Color.black.opacity(0.05)
        .cornerRadius(50)
        .frame(height: UIScreen.main.bounds.height - 100)
        .edgesIgnoringSafeArea(.top)
      
      VStack {
        HeaderView()
        
        ScrollView(.vertical, showsIndicators: false) {
          ScrollView(.horizontal, showsIndicators: false) {
            HStack {
              
              VStack {
                Image(systemName: "plus.circle")
                  .foregroundColor(.gray)
              }
              .frame(width: 50, height: 100)
              .background(.white, in: RoundedRectangle(cornerRadius: 10))
              .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
              .padding(.trailing, 8)
              
              ForEach(listCategoryItem, id: \.id) { item in
                VStack(spacing: 16) {
                  Text(item.name)
                    .foregroundColor(self.selection == item.id ? .white : .black)
                    .font(.system(size: 14, weight: .medium))
                  Image(systemName: item.iconName)
                    .foregroundColor(self.selection == item.id ? .white : .gray)
                }
                .frame(width: 100, height: 100)
                .background(self.selection == item.id ? .black : .white, in: RoundedRectangle(cornerRadius: 10))
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                .padding(.trailing, 8)
                .offset(y: self.selection == item.id ? -8 : 0)
                .onTapGesture {
                  self.selection = item.id
                }
              }
            }
            .padding(.all, 24)
          }
          
          VStack(spacing: 16) {
            
            HStack {
              Text("Devices").fontWeight(.bold)
              Text("8").foregroundColor(.gray)
              Spacer()
            }
            
            ForEach(listItem, id: \.id) { item in
              CardItemView(item: item)
                .padding(.vertical, 8)
            }
            
          }
          .padding(.horizontal, 24)
          .padding(.bottom, 24)
        }
      }
      .cornerRadius(50)
      .frame(height: UIScreen.main.bounds.height - 100)
      .edgesIgnoringSafeArea(.bottom)
    }
    .edgesIgnoringSafeArea(.top)
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}

struct HeaderView: View {
  var body: some View {
    HStack {
      Text("Browse")
        .font(.title)
        .fontWeight(.bold)
      
      Spacer()
    }
    .padding(.top, 40)
    .padding(.horizontal, 24)
    .frame(width: UIScreen.main.bounds.width, height: 100)
  }
}
