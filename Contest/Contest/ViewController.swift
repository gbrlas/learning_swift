//
//  ViewController.swift
//  Contest
//
//  Created by Goran Brlas on 18/12/2017.
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

    @IBOutlet weak var emailTextField: UITextField!
    
    func animate() {
        UIView.animate(withDuration: 0.25, animations: {
            self.emailTextField.transform = CGAffineTransform(translationX: 0, y: 30)
        }) { (_) in
            UIView.animate(withDuration: 0.25, animations: {
                self.emailTextField.transform = CGAffineTransform.identity
            })
        }
    }
    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        if emailTextField.text?.count == 0 {
            animate()
        } else {
            print("aaa")
            performSegue(withIdentifier: "submitEntry", sender: nil)
        }
        
        
    }
}

