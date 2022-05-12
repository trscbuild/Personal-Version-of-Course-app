//
//  RestaurantTableViewCell.swift
//  RestaurantList
//
//  Created by Zean Jackson on 4/28/22.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var foodTypeLabel: UILabel!
    
    func configureUI(with restaurant: Restaurant) {
        nameLabel.text = restaurant.name
        nameLabel.accessibilityHint = restaurant.name
        foodTypeLabel.text = "\(restaurant.foodType)"
        ratingLabel.text = restaurant.rating.convertRating()
    }

}

// SWITCH
///        if rate == 1 {
//            nameLabel.text = "$"
//        }else if rate == 2 {
//            nameLabel.text = "$$"
//        }else if rate == 3 {
//            nameLabel.text = "$$$"
//        }else if rate == 4{
//            nameLabel.text = "$$$$"
//        }else if rate == 5{
//            nameLabel.text = "$$$$$"
//        }

// ELSE IF

//        if rate == 1 {
//            nameLabel.text = "$"
//        }else if rate == 2 {
//            nameLabel.text = "$$"
//        }else if rate == 3 {
//            nameLabel.text = "$$$"
//        }else if rate == 4{
//            nameLabel.text = "$$$$"
//        }else if rate == 5{
//            nameLabel.text = "$$$$$"
//        }
