//
//  ViewController.swift
//  CommonInputControls
//
//  Created by ManhattanProject on 7/5/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
            if sender.isOn {
            print("The switch is on!")
        } else {
            print("The switch is off.")
        }
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
}

