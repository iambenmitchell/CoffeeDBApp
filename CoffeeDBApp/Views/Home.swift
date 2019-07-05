//
//  ContentView.swift
//  CoffeeDBApp
//
//  Created by Ben Mitchell on 05/07/2019.
//  Copyright © 2019 Ben Mitchell. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    
    var categories:[String:[Drink]] {
        .init(
            grouping: drinkData,
            by:{$0.category.rawValue}
        )
    }
    
    
    var body: some View {
        NavigationView{
            List (categories.keys.sorted().identified(by: \String.self)) {key in
                DrinkRow(categoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key]!)
                    .frame(height: 320)
                .padding(.top)
                .padding(.bottom)
            }
            .navigationBarTitle(Text("COFFEE DB"))
        }
    }
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
