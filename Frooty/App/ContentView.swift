//
//  ContentView.swift
//  Frooty
//
//  Created by Dusan Vojinovic on 27.2.22..
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 13 Pro")
    }
}
