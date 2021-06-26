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
        }//: NavigationView
    }
}
//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}