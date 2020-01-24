//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by ManhattanProject on 7/21/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("MiddleViewController - View Did Load")
        if let existingText = middleLabelOutlet.text {
            middleLabelOutlet.text = "\(existingText)\nEvent number \(eventNumber) was viewDidLoad"
            eventNumber += 1
        }
        
    }
   
    @IBOutlet weak var middleLabelOutlet: UILabel!
    
    var eventNumber: Int = 1
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("MiddleViewController - View Will Appear")
        if let existingText = middleLabelOutlet.text {
            middleLabelOutlet.text = "\(existingText)\nEvent number \(eventNumber) was viewWillAppear"
            eventNumber += 1
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("MiddleViewController - View Did Appear")
        if let existingText = middleLabelOutlet.text {
            middleLabelOutlet.text = "\(existingText)\nEvent number \(eventNumber) was viewDidAppear"
            eventNumber += 1
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("MiddleViewController - View Will Disappear")
        if let existingText = middleLabelOutlet.text {
            middleLabelOutlet.text = "\(existingText)\nEvent number \(eventNumber) was viewWillDisappear"
            eventNumber += 1
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("MiddleViewController - View Did Disappear")
        if let existingText = middleLabelOutlet.text {
            middleLabelOutlet.text = "\(existingText)\nEvent number \(eventNumber) was viewDidDisappear"
            eventNumber += 1
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
