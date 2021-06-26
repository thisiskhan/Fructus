//
//  FruitCardView.swift
//  Fructus
//
//  Created by Raza Khan on 22/06/21.
//  insta: @razakhan.dev!

import SwiftUI

struct FruitCardView: View {
    
    //MARK: - Properties
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                            radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // FRUIT: TITLE
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2   )
                
                // FRUIT: HEADLINE
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // Instagram username
                Text("@razakhan.dev")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2   )
                // FRUIT: START
                StartButtonView()
                
            }//: VStack
        }//: ZStack
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(LinearGradient(gradient:
        Gradient(
            colors:
                fruit.gradientColors
        ),
           startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 14)
        
    }
}
//MARK: - Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[7])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
