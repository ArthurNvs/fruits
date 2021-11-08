//
//  ContentView.swift
//  Fruits
//
//  Created by Arthur Neves on 06/11/21.
//

import SwiftUI

struct ContentView: View {
  @AppStorage("isOnboarding") var isOnboarding: Bool?
  
  private var fruits = fruitsData
  
  var body: some View {
    NavigationView {
      List {
        ForEach(fruits.shuffled()) { item in
          NavigationLink(destination: FruitDetailView(fruit: item)) {
            FruitRowView(fruit: item)
              .padding(.vertical, 4)
          }
        }
      }
      .navigationTitle("Fruits")
    } // NavigationView
  }
  
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(fruits: fruitsData)
        .preferredColorScheme(.dark)
    }
  }
}
