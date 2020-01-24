//
//  ViewController.swift
//  MemeMaker
//
//  Created by ManhattanProject on 6/19/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    
    var topChoices = [CaptionOption]()
    var bottomChoices = [CaptionOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let coolChoice = CaptionOption(symbol: "🕶", caption: "You know what's cool?")
        let madChoice = CaptionOption(symbol: "💥", caption: "You know what makes me mad?")
        let loveChoice = CaptionOption(symbol: "💕", caption: "You know who I love?")
        
        topChoices = [coolChoice, madChoice, loveChoice]
        topCaptionSegmentedControl.removeAllSegments()
        
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.symbol, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        let catChoice = CaptionOption(symbol: "🐱", caption: "Cats wearing hats")
        let dogChoice = CaptionOption(symbol: "🐶", caption: "Dogs carrying logs")
        let monkeyChoice = CaptionOption(symbol: "🐵", caption: "Blake. Fucking. Lively.")
        
        bottomChoices = [catChoice, dogChoice, monkeyChoice]
        bottomCaptionSegmentedControl.removeAllSegments()
        
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.symbol, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        updateLabels()
    }
    
    func updateLabels() {
        let topIndex = topCaptionSegmentedControl.selectedSegmentIndex
        let bottomIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        
        let topChoice = topChoices[topIndex]
        let bottomChoice = bottomChoices[bottomIndex]
        
        topCaptionLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomChoice.caption
    }
    
    @IBAction func SegmentedControlAction(_ sender: UISegmentedControl) {
        updateLabels()
    }
}

