//
//  FruitsApp.swift
//  Fruits
//
//  Created by Arthur Neves on 06/11/21.
//

import SwiftUI

@main
struct FruitsApp: App {
  @AppStorage("isOnboarding") var isOnboarding = true
  
  var body: some Scene {
    WindowGroup {
      if isOnboarding {
        OnboardingView()
      } else {
        ContentView()
      }
    }
  }
}
