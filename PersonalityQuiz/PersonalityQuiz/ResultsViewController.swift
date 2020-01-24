//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by ManhattanProject on 7/28/19.
//  Copyright © 2019 ManhattanProject. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var responses: [Answer]!
   
    @IBOutlet weak var resultsAnswerLabel: UILabel!
    
    @IBOutlet weak var resultsDefinitionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
        navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
    }
    
    func calculatePersonalityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map { $0.type }
        
        for response in responseTypes {
            let newCount: Int
            
            if let oldCount = frequencyOfAnswers[response] {
                newCount = oldCount + 1
            } else {
                newCount = 1
            }
            frequencyOfAnswers[response] = newCount
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
        { (pair1, pair2) -> Bool in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        
        resultsAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultsDefinitionLabel.text = mostCommonAnswer.definition
    
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
