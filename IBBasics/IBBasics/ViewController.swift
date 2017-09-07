//
//  ViewController.swift
//  IBBasics
//
//  Created by Goran Brlas on 07/09/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton.setTitleColor(.blue, for: .normal)
        let label = UILabel(frame: CGRect(x: 16, y: 16, width: 200,
            height: 44))
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var myButton: UIButton!

    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was pressed")
    }
}

