//
//  Restaurant.swift
//  RestaurantList
//
//  Created by Zean Jackson on 4/28/22.
//

import Foundation

///  A restaurant object with name, food type and rating
///  rating is an Int from 1 to 5
///  Models are sources of truth
struct Restaurant {
    
    let name: String
    let foodType: FoodType
    let rating: Int
    
    
    static func loadRestaurants() -> [Restaurant] {
        let restaurants = [
            Restaurant(name: "Ceiba", foodType: .mexican, rating: 5),
            Restaurant(name: "Buddha Asian Bistro", foodType: .chinese, rating: 3),
            Restaurant(name: "Asobo", foodType: .chinese, rating: 2),
            Restaurant(name: "Soccarat", foodType: .italian, rating: 1),
            Restaurant(name: "Pizzeria", foodType: .italian, rating: 4),
            Restaurant(name: "Vapiano", foodType: .italian, rating: 4),
            Restaurant(name: "Dim Sum", foodType: .chinese, rating: 3),
            Restaurant(name: "Kais", foodType: .mexican, rating: 5),
        ]
        return restaurants
    }
}
    

enum FoodType {
    case chinese
    case mexican
    case italian
}


