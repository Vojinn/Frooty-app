//
//  OnboardingVIew.swift
//  Frooty
//
//  Created by Dusan Vojinovic on 28.2.22..
//

import SwiftUI

struct OnboardingVIew: View {
    //MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW

struct OnboardingVIew_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingVIew(fruits: fruitsData)
            .previewDevice("iPhone 13 pro")
    }
}
