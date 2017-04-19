//
//  ViewController.swift
//  TableViewApp
//
//  Created by Anil Varghese on 19/06/14.
//  Copyright (c) 2014 Anil Varghese. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    @IBOutlet weak var tablewView: UITableView!

    let simpleTableIdentifier = "TableViewCell";

    
    var tableData = ["Egg Benedict", "Mushroom Risotto", "Full Breakfast", "Hamburger", "Ham and Egg Sandwich", "Creme Brelee", "White Chocolate Donut", "Starbucks Coffee", "Vegetable Curry", "Instant Noodle with Egg", "Noodle with BBQ Pork", "Japanese Noodle with Pork", "Green Tea", "Thai Shrimp Cake", "Angry Birds Cake", "Ham and Cheese Panini"]
    
    var thumbnails = ["egg_benedict.jpg", "mushroom_risotto.jpg", "full_breakfast.jpg", "hamburger.jpg", "ham_and_egg_sandwich.jpg", "creme_brelee.jpg", "white_chocolate_donut.jpg", "starbucks_coffee.jpg", "vegetable_curry.jpg", "instant_noodle_with_egg.jpg", "noodle_with_bbq_pork.jpg", "japanese_noodle_with_pork.jpg", "green_tea.jpg", "thai_shrimp_cake.jpg", "angry_birds_cake.jpg", "ham_and_cheese_panini.jpg"]
    
    var prepTime = ["30 min", "30 min", "20 min", "30 min", "10 min", "1 hour", "45 min", "5 min", "30 min", "8 min", "20 min", "20 min", "5 min", "1.5 hour", "4 hours", "10 min"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        //Register cell nib
        tablewView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        // Find out the path of recipes.plist
    
        let path = Bundle.main.path(forResource: "recipes", ofType: "plist")
        
        // Load the file content and read the data into arrays
        if let validPath = path {
            let  dict = NSDictionary(contentsOfFile: validPath)
            
            tableData = dict!["RecipeName"] as! Array
            thumbnails = dict!["Thumbnail"] as! Array
            prepTime = dict!["PrepTime"] as! Array
        }
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let  cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier,for:indexPath ) as! TableViewCell
       
        cell.nameLabel!.text = tableData[indexPath.row]
        cell.recipeImageView!.image = UIImage(named:thumbnails[indexPath.row])
        cell.timeLabel!.text = prepTime[indexPath.row];
        
        return cell
    }
}

