//
//  ViewController.swift
//  Deneme
//
//  Created by USER on 1.05.2020.
//  Copyright © 2020 Furkan Basoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "toTabBar", sender: nil)
    }
    
    
}

