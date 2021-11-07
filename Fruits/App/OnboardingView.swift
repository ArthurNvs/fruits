//
//  OnboardingView.swift
//  Fruits
//
//  Created by Arthur Neves on 06/11/21.
//

import SwiftUI

struct OnboardingView: View {
  var fruits: [Fruit] = fruitsData
  
  var body: some View {
    TabView {
      ForEach(fruits[0...5]) { item in
        FruitCardView(fruit: item)
      }
    } // TabView
    .tabViewStyle(PageTabViewStyle())
    .padding(.vertical, 20)
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView(fruits: fruitsData)
  }
}
