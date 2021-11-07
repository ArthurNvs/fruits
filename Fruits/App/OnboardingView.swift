//
//  OnboardingView.swift
//  Fruits
//
//  Created by Arthur Neves on 06/11/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
      TabView {
        ForEach(0..<5) { item in
          //FruitCardView()
        }
      } // TabView
      .tabViewStyle(PageTabViewStyle())
      .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
