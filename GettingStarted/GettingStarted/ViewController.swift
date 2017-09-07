//
//  ViewController.swift
//  GettingStarted
//
//  Created by Goran Brlas on 06/09/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var names = ["Tammy", "Cole"]
        names.removeFirst()
        names.removeFirst()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

