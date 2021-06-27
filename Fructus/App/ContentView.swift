//
//  ContentView.swift
//  Fructus
//
//  Created by Raza Khan on 22/06/21.
// 

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits : [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                    }
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fructus")
            .navigationBarItems(trailing: Button(action :{
                isShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            }//: Buttons
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
            )
            
            
        }//: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
