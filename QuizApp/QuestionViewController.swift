//
//  QuestionViewController.swift
//  QuizApp
//
//  Created by Nishu Roka on 03/11/2021.
//

import UIKit

class QuestionViewController: UIViewController {
    
    var queList = [Question]()
    var randomQuestions = [Question]()
    var rightAnswers = 0
    var currentQuestion:Question! = nil
    var currentIndex = 0
    var selectedAnswer:String = ""
    
    @IBOutlet weak var questionNumber: UILabel!
    @IBOutlet weak var question: UITextView!
    @IBOutlet weak var option1: UILabel!
    @IBOutlet weak var option2: UILabel!
    @IBOutlet weak var option3: UILabel!
    @IBOutlet weak var option4: UILabel!
    @IBOutlet weak var alertMssg: UILabel!
    
    @IBOutlet weak var option1RB: UIButton!
    @IBOutlet weak var option2RB: UIButton!
    @IBOutlet weak var option3RB: UIButton!
    @IBOutlet weak var option4RB: UIButton!
    @IBOutlet weak var saveAndContinueBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        fillData()
        randomQuestions = Array(queList.shuffled().prefix(5))
        currentQuestion = randomQuestions[0]
        currentIndex = 0
        setQuestion()
    }
    
    func fillData() {
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
    
    @IBAction func answerClick(_ sender: Any) {
        unselectOptions()
        switch(sender as! UIButton){
        case option1RB:
            option1RB.isSelected = !option1RB.isSelected
            selectedAnswer = currentQuestion.option1
        case option2RB:
            option2RB.isSelected = !option2RB.isSelected
            selectedAnswer = currentQuestion.option2
        case option3RB:
            option3RB.isSelected = !option3RB.isSelected
            selectedAnswer = currentQuestion.option3
        case option4RB:
            option4RB.isSelected = !option4RB.isSelected
            selectedAnswer = currentQuestion.option4
        default:
            print("Option not found")
        }
    }
    
    func unselectOptions(){
        option1RB.isSelected = false
        option2RB.isSelected = false
        option3RB.isSelected = false
        option4RB.isSelected = false
    }
    
    func setQuestion(){
        questionNumber.text = String(currentIndex + 1)
        question.text = currentQuestion.que
        option1.text = currentQuestion.option1
        option2.text = currentQuestion.option2
        option3.text = currentQuestion.option3
        option4.text = currentQuestion.option4
    }
    
    @IBAction func saveAndContinue(_ sender: Any) {
        if selectedAnswer == "" {
            alertMssg.text = "Please select an answer."
        } else {
            alertMssg.text = ""
            if currentQuestion.checkAnswer(answer: selectedAnswer) {
                rightAnswers += 1
            }
            currentIndex += 1
            if currentIndex+1 == randomQuestions.count {
                saveAndContinueBtn.setTitle("Submit", for: .normal)
            }
            if randomQuestions.count > currentIndex {
                currentQuestion = randomQuestions[currentIndex]
                setQuestion()
                unselectOptions()
                selectedAnswer = ""
            } else {
                performSegue(withIdentifier: "result", sender: self)
            }
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as! ResultViewController
        resultVC.score = rightAnswers
    }
    
}
