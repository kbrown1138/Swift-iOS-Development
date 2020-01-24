//
//  ViewController.swift
//  AppEventCount
//
//  Created by ManhattanProject on 7/30/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateView()
    }

   
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    
    @IBOutlet weak var willResignActiveLabel: UILabel!
    
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    
    @IBOutlet weak var willEnterForeground: UILabel!
    
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    
    @IBOutlet weak var willTerminateLabel: UILabel!
    
    var launchCount = 0
    
    var resignCount = 0
    
    var backgroundCount = 0
    
    var foregroundCount = 0
    
    var activeCount = 0
    
    var terminateCount = 0
    
    func updateView() {
        didFinishLaunchingLabel.text =  "The app has launched \(launchCount) times."
        
        willResignActiveLabel.text = "The app has become inactive \(resignCount) times."
        
        didEnterBackgroundLabel.text = "The app has entered the background state \(backgroundCount) times."
        
        willEnterForeground.text = "The app has moved from the background to the foreground state \(foregroundCount) times."
        
        didBecomeActiveLabel.text = "The app has moved from the inactive to the active state \(activeCount) times."
        
        willTerminateLabel.text = "The app has terminated \(terminateCount) times."
    }
    
}

