//
//  ContentView.swift
//  Fruits
//
//  Created by Arthur Neves on 06/11/21.
//

import SwiftUI

struct ContentView: View {
  @State private var isShowingSettings = false
  
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
      .navigationBarItems(
        trailing:
          Button(action: {
            isShowingSettings = true
          }) {
            Image(systemName: "slider.horizontal.3")
          } //: Button
          .sheet(isPresented: $isShowingSettings) {
            SettingsView(isPresented: $isShowingSettings)
          })
    } //: NavigationView
    .navigationViewStyle(StackNavigationViewStyle())
  }
  
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView(fruits: fruitsData)
        .preferredColorScheme(.dark)
    }
  }
}
