//
//  ViewController.swift
//  AppEventCount
//
//  Created by Goran Brlas on 26/09/2017.
//  Copyright © 2017 Goran Brlas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var didFinishLaunching: UILabel!
    @IBOutlet weak var didBecomeActive: UILabel!
    @IBOutlet weak var willResignActive: UILabel!
    @IBOutlet weak var didEnterBackground: UILabel!
    @IBOutlet weak var willEnterForeground: UILabel!
    @IBOutlet weak var willTerminate: UILabel!
    
    var launchCounter = 0
    var activeCounter = 0
    var resignActiveCounter = 0
    var backgroundCounter = 0
    var foregroundCounter = 0
    var terminateCounter = 0
    
    func updateView() {
        didFinishLaunching.text = "The app has launched \(launchCounter) times."
        didBecomeActive.text = "The app has become active \(activeCounter) times."
        willResignActive.text = "The app has resigned active \(resignActiveCounter) times."
        didEnterBackground.text = "The app entered background \(backgroundCounter) times."
        willEnterForeground.text = "The app entered foreground \(foregroundCounter) times."
        willTerminate.text = "The app terminated \(terminateCounter) times."
    }
    
}

