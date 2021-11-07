//
//  StartButtonView.swift
//  Fruits
//
//  Created by Arthur Neves on 06/11/21.
//

import SwiftUI

struct StartButtonView: View {
  @AppStorage("isOnboarding") var isOnboarding: Bool?
  
  var body: some View {
    Button(action: {
      isOnboarding = false
    }) {
      HStack(spacing: 8) {
        Text("Start")
        
        Image(systemName: "arrow.right.circle")
          .imageScale(.large)
      } // HStack
      .padding(.horizontal, 16)
      .padding(.vertical, 10)
      .background(
        Capsule().strokeBorder(Color.white, lineWidth: 1.25)
      )
    } // Button
    .accentColor(Color.white)
  }
}

struct StartButtonView_Previews: PreviewProvider {
  static var previews: some View {
    StartButtonView()
      .preferredColorScheme(.dark)
      .previewLayout(.sizeThatFits)
  }
}
