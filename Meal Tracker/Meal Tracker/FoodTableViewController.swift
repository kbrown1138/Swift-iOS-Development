//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by ManhattanProject on 8/8/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        get {
            let breakfast = Meal(name: "breafast", food: [Food(name: "Eggs", description: "Scrambled"), Food(name: "Toast", description: "French"), Food(name: "Cereal", description: "Frosted Flakes")])
            let lunch = Meal(name: "lunch", food: [Food(name: "Sandwich", description: "Tuna melt"), Food(name: "Hamburger", description: "Medium well"), Food(name: "Salad", description: "Caesar")])
            let dinner = Meal(name: "dinner", food: [Food(name: "Pizza", description: "Sausage"), Food(name: "Steak", description: "Filet"), Food(name: "Pasta", description: "Spaghetti")])
            
            return [breakfast, lunch, dinner]
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        
        return meals[section].name
        
    }
    

    
}

