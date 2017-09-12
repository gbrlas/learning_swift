//
//  ViewController.swift
//  RainbowTabs
//
//  Created by Goran Brlas on 12/09/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBarItem.badgeValue = "!"
        tabBarItem.badgeValue = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

