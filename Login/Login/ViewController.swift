//
//  ViewController.swift
//  Login
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = textField.text
        }
    }

    @IBOutlet var textField: UITextField!
    
    @IBOutlet var forgotUserNameButton: UIButton!
    
    @IBOutlet var forgotPasswordButton: UIButton!
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "mainSegue", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "mainSegue", sender: forgotPasswordButton)
    }
    
}

