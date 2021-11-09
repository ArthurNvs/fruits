//
//  SettingsView.swift
//  Fruits
//
//  Created by Arthur Neves on 09/11/21.
//

import SwiftUI

struct SettingsView: View {
  //@Environment(\.presentationMode) var presentationMode
  @Binding var isPresented: Bool
  @AppStorage("isOnboarding") var isOnboarding = false
  
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

          GroupBox(
            label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
          ) {
            Divider().padding(.vertical, 4)
            
            Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the weolcome screen again.")
              .padding(.vertical, 8)
              .frame(minHeight: 60)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            Toggle(isOn: $isOnboarding) {
              if isOnboarding {
                Text("Restarted".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.green)
              } else {
                Text("Restart".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.secondary)              }
            }
            .padding()
            .background(
              Color(UIColor.tertiarySystemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            )
          }
          
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
              isPresented = false
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
  @State private static var isShowingSettings = true
  static var previews: some View {
    SettingsView(isPresented: $isShowingSettings)
      .preferredColorScheme(.dark)
      .previewLayout(.sizeThatFits)
  }
}
