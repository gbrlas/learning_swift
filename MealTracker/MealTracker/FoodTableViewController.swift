//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Goran Brlas on 30/09/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        let breakfast: Meal = Meal(name: "breakfast", food: [Food(name: "shake", description: "A nice protein shake"), Food(name: "banana", description: "Some fruit"), Food(name: "eggs", description: "Eggs benedict")])
        let lunch: Meal = Meal(name: "lunch", food: [Food(name: "steak", description: "A nice medium rare steak"), Food(name: "chicken", description: "Good old chicken"), Food(name: "fish", description: "Some tasty tuna")])
        let dinner: Meal = Meal(name: "dinner", food: [Food(name: "shake", description: "A nice protein shake"), Food(name: "cottage cheese", description: "Some casein"), Food(name: "milk", description: "A nice drink")])
        
        return [breakfast, lunch, dinner]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }

}
