//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Raza Khan on 27/06/21.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: -PROPERTIES
    var labelText: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(labelText)
                    .foregroundColor(Color.gray)
                    Spacer()
                if (content != nil){
                    Text(content!)
                }else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else{
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(labelText: "Developer", content: "Raza Khan")
                .previewLayout(.fixed(width: 370, height: 60))
                .padding()
            SettingsRowView(labelText: "Instagram", linkLabel: "@razakhan.dev", linkDestination: "razakhan.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 370, height: 60))
                .padding()
        }
    }
}
