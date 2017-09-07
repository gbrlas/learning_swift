//
//  ViewController.swift
//  Light
//
//  Created by Goran Brlas on 07/09/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI() {
        switch lightOn {
        case true:
            view.backgroundColor = .white
        default:
            view.backgroundColor = .black
        }
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }

}

