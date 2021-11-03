//
//  QuestionViewController.swift
//  QuizApp
//
//  Created by Nishu Roka on 03/11/2021.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var queList = [Question]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func fillData(){
        queList.append(Question(que:"What does SQL stand for?", option1: "Strong Query Language", option2: "Structured Query Language", option3: "Structured Question Language", option4: "Simple Question Language", rightAns: "Structured Query Language"))
        queList.append(Question(que:"Which SQL statement is used to extract data from a database?", option1: "Open", option2: "Extract", option3: "Get", option4: "Select", rightAns: "Select"))
        queList.append(Question(que:"Which SQL statement is used to update data in a database?", option1: "Update", option2: "Save As", option3: "Modify", option4: "Save", rightAns: "Modify"))
        queList.append(Question(que:"Which SQL statement is used to delete data from a database?", option1: "Delete", option2: "Collapse", option3: "Remove", option4: "Trunc", rightAns: "Delete"))
        queList.append(Question(que:"Which SQL statement is used to insert new data in a database?", option1: "Insert Into", option2: "Delete", option3: "Add", option4: "Add New", rightAns: "Insert Into"))
        queList.append(Question(que:"With SQL, how do you select all the columns from a table named Persons", option1: "SELECT *. Persons", option2: "SELECT * FROM Persons", option3: "SELECT all FROM Persons", option4: "SELECT FROM Persons", rightAns: "SELECT * FROM Persons"))
        queList.append(Question(que:"The OR operator displays a record if", option1: "ANY conditions listed are true", option2: "None conditions listed are true", option3: "All conditions listed are true", option4: "None of above", rightAns: "ANY conditions listed are true"))
        queList.append(Question(que:"The AND operator displays a record if", option1: "ANY conditions listed are true", option2: "None conditions listed are true", option3: "All conditions listed are true", option4: "None of above", rightAns: "ALL conditions listed are true"))
        queList.append(Question(que:"Which SQL statement is used to return only different values?", option1: "Select Different", option2: "Select Unique", option3: "Select Distinct", option4: "All of above", rightAns: "Select Distinct"))
        queList.append(Question(que:"Which SQL keyword is used to sort the result-set?", option1: "Sort By", option2: "Sort", option3: "Order", option4: "Order By", rightAns: "Order By"))
    }

}
