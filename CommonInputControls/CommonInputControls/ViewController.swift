//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Goran Brlas on 10/09/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
    
    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
        
        toggle.isOn ? print("The switch is on!") : print("The switch is off!")
        
        print("The slider is set to \(slider.value)")
    }

    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off!")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

