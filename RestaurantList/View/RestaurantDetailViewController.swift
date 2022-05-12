//
//  RestaurantDetailViewController.swift
//  RestaurantList
//
//  Created by Zean Jackson on 4/28/22.
//

import UIKit

class RestaurantDetailViewController: UIViewController  {
    
    var restaurants = Restaurant.loadRestaurants()
    
    var restaurantName : String?
    var restauranteRate: String?
    
    
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var titleOfRestaurant: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleOfRestaurant.text = restaurantName
        ratingLabel.text = restauranteRate
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
