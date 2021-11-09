//
//  SettingsView.swift
//  Fruits
//
//  Created by Arthur Neves on 09/11/21.
//

import SwiftUI

struct SettingsView: View {
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          
          GroupBox(
            label:
              SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
          ) {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
              Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                .font(.footnote)
            }
          }
          // MARK: - 2
          // MARK: - 3
          GroupBox(
            label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
          ) {
              SettingsRowView(name: "Developer", content: "Arthur Neves")
              SettingsRowView(name: "Designer", content: "Robert Petras")
              SettingsRowView(name: "Compatibility", content: "iOS 14+")
              SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
              SettingsRowView(name: "SwiftUI", content: "2.0")
              SettingsRowView(name: "Version", content: "1.1.0")
          }
          
        } // VStack
        .navigationBarTitle(Text("Settings"), displayMode: .large)
        .navigationBarItems(
          trailing:
            Button(action: {
              presentationMode.wrappedValue.dismiss()
            }) {
              Image(systemName: "xmark")
            }
        )
        .padding()
      } // ScrollView
    } // NavigationView
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .preferredColorScheme(.dark)
      .previewLayout(.sizeThatFits)
  }
}
