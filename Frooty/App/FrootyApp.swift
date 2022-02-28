//
//  FrootyApp.swift
//  Frooty
//
//  Created by Dusan Vojinovic on 27.2.22..
//

import SwiftUI

@main
struct FrootyApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingVIew()
            } else {
                ContentView()
            }
        }
    }
}
