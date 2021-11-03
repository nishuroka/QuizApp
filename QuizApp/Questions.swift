//
//  Questions.swift
//  QuizApp
//
//  Created by Nishu Roka on 03/11/2021.
//

import Foundation

class Question{
    var que : String
    var option1 : String
    var option2 : String
    var option3 : String
    var option4 : String
    var rightAns : String

    init(que:String, option1:String, option2:String, option3:String, option4:String, rightAns:String) {
        self.que = que
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.option4 = option4
        self.rightAns = rightAns
    }
}
