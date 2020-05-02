//
//  Tab2Controller.swift
//  Deneme
//
//  Created by USER on 1.05.2020.
//  Copyright © 2020 Furkan Basoglu. All rights reserved.
//

import UIKit

class Tab2Controller: UIViewController,UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var countLabel2: UILabel!
    
    @IBOutlet weak var tableView2: UITableView!
    
    var coins = 0
    var tableArray = ["10","20","30","40","50"]
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView2.dataSource = self
        tableView2.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
        countLabel2.text = UserDefaults.standard.string(forKey: "count")
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = tableArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0{
            
            UserDefaults.standard.set(countLabel2.text, forKey: "count")
            coins += 10
            countLabel2.text = "\(coins)"

            
        }else if indexPath.row == 1{
            
            UserDefaults.standard.set(countLabel2.text, forKey: "count")
            coins += 20
            countLabel2.text = "\(coins)"

            
        }else if indexPath.row == 2{
            
            UserDefaults.standard.set(countLabel2.text, forKey: "count")
             coins += 30
             countLabel2.text = "\(coins)"
            
        
        }else if indexPath.row == 3{
            
            UserDefaults.standard.set(countLabel2.text, forKey: "count")
             coins += 40
             countLabel2.text = "\(coins)"
        
        }else if indexPath.row == 4{
            
            UserDefaults.standard.set(countLabel2.text, forKey: "count")
             coins += 50
             countLabel2.text = "\(coins)"
            
        }
        
    }

}
