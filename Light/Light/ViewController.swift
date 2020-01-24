//
//  ViewController.swift
//  Light
//
//  Created by ManhattanProject on 6/23/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        updateUI()
    }
    
    func updateUI() {
        lightOn = !lightOn
        view.backgroundColor = lightOn ? .white : .black
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }


}

