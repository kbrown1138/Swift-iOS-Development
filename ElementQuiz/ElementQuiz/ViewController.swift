//
//  ViewController.swift
//  ElementQuiz
//
//  Created by ManhattanProject on 6/16/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func gotoNextElement(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    
    var currentElementIndex = 0
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
}

