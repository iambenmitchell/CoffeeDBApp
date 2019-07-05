//
//  Drink.swift
//  CoffeeDBApp
//
//  Created by Ben Mitchell on 05/07/2019.
//  Copyright © 2019 Ben Mitchell. All rights reserved.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var category:Category
    var description:String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
    
}
