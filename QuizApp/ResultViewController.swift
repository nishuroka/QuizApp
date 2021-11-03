//
//  ResultViewController.swift
//  QuizApp
//
//  Created by Roch on 03/11/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var score:Int = 0
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(score)
        message.text = getMessage(score: score)
        // Do any additional setup after loading the view.
    }
    
    func getMessage(score:Int) -> String{
        switch score {
        case 3:
            return "Good Job!"
        case 4:
            return "Excellent Work!"
        case 5:
            return "You are a Genius!"
        default:
            return "Please try again!"
        }
        
        
    }
    
}
