//
//  SettingsView.swift
//  Fructus
//
//  Created by Raza Khan on 27/06/21.
//

import SwiftUI

struct SettingsView: View {
    //MARK: -PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: -BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    //MARK: -SECTION 1
                    GroupBox(label:
                               SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most Fruits are naturally low in fat, sodium and Calories. None have cholesterol. Fruits are sourecs of many essental nutrients, includong potassium, dietary, fiber, vitamins and much more!")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: -SECTION 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        Text("If you wish you can restart the application by toggel the switch in this box. That way it start the onboarding process and you will see the welcome screen agaoin.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                              
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                            
                            
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    //MARK: -SECTIOON 3
                    
                    GroupBox(label :
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        
                        SettingsRowView(labelText: "Developer", content: "Raza Khan")
                        SettingsRowView(labelText: "Compatibility", content: "iOS 14")
                        
                       
                        SettingsRowView(labelText: "Website", linkLabel: "razakhan", linkDestination: "razakhan.netlify.app")
                       
                        SettingsRowView(labelText: "Contact Us", linkLabel: "Shoot Me an Email 💌", linkDestination: "mailto:thisisrazakhan")
                       
                        SettingsRowView(labelText: "Instagram", linkLabel: "@razakhan.dev", linkDestination: "instagram.com/razakhan.dev")
                       
                        SettingsRowView(labelText: "Twitter", linkLabel: "@thisisrazakhan", linkDestination: "twitter.com/thisisrazakhan")
                        SettingsRowView(labelText: "Version", content: "1.1.0")
                        }//: Box
                     }//: Vstack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action :{
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }//: Scroll
        }//: NavigationView
        
    }
}

//MARK: -PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            
    }
}
