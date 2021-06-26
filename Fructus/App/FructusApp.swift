//
//  FructusApp.swift
//  Fructus
//
//  Created by Raza Khan on 22/06/21.
//  Instagram: @razakhan.dev

import SwiftUI
@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var  isOnboarding: Bool = true
    
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            }else{
                ContentView()
            }
            
        }
    }
}
