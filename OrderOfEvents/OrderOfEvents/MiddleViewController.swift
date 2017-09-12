//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Goran Brlas on 12/09/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var middleLabel: UILabel!
    var eventNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MiddleViewController - View Did Load")
        
        if let existingText = middleLabel.text {
            middleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewDidLoad"
            eventNumber += 1
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("MiddleViewController - View will appear.")
        
        if let existingText = middleLabel.text {
            middleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewWillAppear"
            eventNumber += 1
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("MiddleViewController - View Did Appear")
        
        if let existingText = middleLabel.text {
            middleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewDidAppear"
            eventNumber += 1
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("MiddleViewController - View Will Disappear")
        
        if let existingText = middleLabel.text {
            middleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewWillDisappear"
            eventNumber += 1
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("MiddleViewController - View Did Disappear")
        
        if let existingText = middleLabel.text {
            middleLabel.text = "\(existingText)\nEvent number \(eventNumber) was viewDidDisappear"
            eventNumber += 1
        }
    }
}
