//
//  OnboardingVIew.swift
//  Frooty
//
//  Created by Dusan Vojinovic on 28.2.22..
//

import SwiftUI

struct OnboardingVIew: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW

struct OnboardingVIew_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingVIew()
    }
}
