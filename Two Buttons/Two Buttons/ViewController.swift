//
//  ViewController.swift
//  Two Buttons
//
//  Created by Goran Brlas on 10/09/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        if let text = textField.text {
            label.text = text
        }
    }
    
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        label.text = ""
        textField.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

