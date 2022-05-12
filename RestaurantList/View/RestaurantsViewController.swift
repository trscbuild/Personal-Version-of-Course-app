//
//  ViewController.swift
//  RestaurantList
//
//  Created by Zean Jackson on 4/28/22.
//

import UIKit

class RestaurantsViewController: UIViewController {
    
    var restaurants = Restaurant.loadRestaurants()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        print(restaurants)
        let restaurant2 = restaurants
        let file = restaurant2[0].rating
        print(file)
    }
}

// MARK: - UITableViewDataSource
extension RestaurantsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        restaurants.count
    }

    // Single Responsibilty Principle
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // use guard for early exit and allow cell to exist outside of the scope
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell", for: indexPath) as? RestaurantTableViewCell else {
            return UITableViewCell()
        }
        let restaurant = restaurants[indexPath.row]
        cell.configureUI(with: restaurant)
        return cell
        
    }
}

extension Int {
    func convertRating() -> String {
        let ratingsDictionary: [Int: String] = [
            1: "$",
            2: "$$",
            3: "$$$",
            4: "$$$$",
            5: "$$$$$"
        ]
        
        if let rating = ratingsDictionary[self] {
           return rating
        }
        return ""
    }
}

// MARK: -  UITableViewDelegate
extension RestaurantsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // let restaurant = restaurants[indexPath.row]
        if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? RestaurantDetailViewController {
            vc.restaurantName = restaurants[indexPath.row].name
            vc.restauranteRate = restaurants[indexPath.row].rating.convertRating()
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            restaurants.remove(at: indexPath.row)
            
        print("Deleted")

        
            tableView.deleteRows(at: [indexPath], with: .bottom)
           // tablevView.deleteRows(at: <#T##[IndexPath]#>, with: <#T##UITableView.RowAnimation#>)
      }
    }


}



/*
self.performSegue(withIdentifier: "goToResult", sender: RestaurantsViewController())

func prepare(for segue: UIStoryboardSegue, sender: Any?) {
if segue.identifier == "goToResult" {
   let destinationVc = segue.destination as! RestaurantDetailViewController
   destinationVc.bmiValue = newLabelTag()
  
}
}

*/
