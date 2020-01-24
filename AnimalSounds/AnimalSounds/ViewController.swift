//
//  ViewController.swift
//  AnimalSounds
//
//  Created by ManhattanProject on 6/17/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var animalSoundLabel: UILabel!
    
    @IBAction func catButtonTapped(_ sender: UIButton) {
        animalSoundLabel.text = "Meow!"
        meowSound.play()
    }
    
    @IBAction func dogButtonTapped(_ sender: UIButton) {
        animalSoundLabel.text = "Woof!"
        woofSound.play()
    }
    
    @IBAction func cowButtonTapped(_ sender: UIButton) {
        animalSoundLabel.text = "Moo!"
        mooSound.play()
    }
    
    let meowSound = SimpleSound(named:"meow")
    
    let woofSound = SimpleSound(named:"woof")
    
    let mooSound = SimpleSound(named:"moo")
}

