//
//  OnboardingView.swift
//  AirTagApp
//
//  Created by Ari Supriatna on 11/07/21.
//

import SwiftUI

struct OnboardingView: View {
  var body: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      
      VStack(spacing: 0) {
        Spacer()
        
        Image("airtag")
          .resizable()
          .scaledToFit()
          .frame(width: 180)
        
        Spacer()
        
        Text("Ping it. Find it.\nAirTag.")
          .font(.system(size: 50, weight: .bold))
          .multilineTextAlignment(.center)
        
        Text("Lose your knack for losing things.")
          .font(.system(size: 18, weight: .regular))
          .padding(.top, 36)
        
        Spacer()
        
        Button {
          print("Navigate to home")
        } label: {
          HStack {
            Text("Get Started")
              .foregroundColor(.black)
              .font(.system(size: 16, weight: .medium))
            Spacer()
            Image(systemName: "arrow.right")
              .foregroundColor(.black)
          }
          .padding(.horizontal, 24)
          .frame(height: 60)
          .background(.white, in: RoundedRectangle(cornerRadius: 20))
        }
        .padding(.horizontal, 24)
        
        Spacer()
      }
      .foregroundColor(.white)
    }
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView()
  }
}
