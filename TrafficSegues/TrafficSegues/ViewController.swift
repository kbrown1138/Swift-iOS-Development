//
//  ViewController.swift
//  TrafficSegues
//
//  Created by ManhattanProject on 7/18/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        
    }

    @IBOutlet weak var textField: UITextField!
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title = textField.text
//    }
    
    @IBOutlet var segueSwitch: UISwitch!
    
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
}

