//
//  Tab1Controller.swift
//  Deneme
//
//  Created by USER on 1.05.2020.
//  Copyright © 2020 Furkan Basoglu. All rights reserved.
//

import UIKit

extension Int {
    func toString() -> String {
        return String(self)
    }
}

class Tab1Controller: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView1: UITableView!
    
    @IBOutlet weak var countLabel: UILabel!
    
    
    var tableArray = ["10","20","30","40","50"]
    
    var coins = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView1.dataSource = self
        tableView1.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // coins ile UserDefaults'a kaydettiğin değeri eşlememişsin hiç. Bu yüzden senkron hareket etmiyorlar. Burada onu düzeltiyoruz.
        coins = UserDefaults.standard.integer(forKey: "count")
        countLabel.text = coins.toString()
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
            
            // Burada da önceki değeri kaydetip sonra değeri arttırmışsın. Böylece ekranda 20 yazıyor iken aslında UserDefaults'daki değer 10. Önce değeri arttır sonra UserDefaults'a kaydettim ve en sonda da ekrana bastırdım bu değeri.
            coins += 10
            UserDefaults.standard.set(coins, forKey: "count")
            countLabel.text = coins.toString()
      
        }else if indexPath.row == 1{
            
            coins += 20
            UserDefaults.standard.set(coins, forKey: "count")
            countLabel.text = coins.toString()
            
            
        }else if indexPath.row == 2{
            
            coins += 30
            UserDefaults.standard.set(coins, forKey: "count")
            countLabel.text = coins.toString()
            
            
        }else if indexPath.row == 3{
            
            coins += 40
            UserDefaults.standard.set(coins, forKey: "count")
            countLabel.text = coins.toString()
            
        }else if indexPath.row == 4{
            
            coins += 50
            UserDefaults.standard.set(coins, forKey: "count")
            countLabel.text = coins.toString()
            
        }
        
    }
    
}
