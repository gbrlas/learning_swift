//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Goran Brlas on 07/09/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var mainLabel: UILabel!
    
    let labelTexts = ["This app rocks", "This is cool", "iOS is awesome"]
    var i = 0
    
    @IBAction func changeTitle(_ sender: Any) {
        mainLabel.text = labelTexts[i % 3]
        i += 1
    }
    
}

