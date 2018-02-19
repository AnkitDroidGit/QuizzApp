//
//  ViewController.swift
//  QuizzApp
//
//  Created by Ankit Kumar on 18/02/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let questionBank = QuestionBank()
    var seletedAnswer : Bool = false
    var questionNumber : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = questionBank.questionList[questionNumber]
        questionLabel.text = firstQuestion.questionText
        
    }
    
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            seletedAnswer = true
        } else {
            seletedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
        nextQuestion()
        
    }
    
    
    func updateUI() {
        
    }
    
    
    func nextQuestion() {
        if questionNumber < questionBank.questionList.count {
            questionLabel.text = questionBank.questionList[questionNumber].questionText
        } else {
            let alert = UIAlertController(title: "End of Quizz", message: "Quizz ended", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Restart", style: .default, handler: { (<#UIAlertAction#>) in
                self.startOver()
            })
        }
    }
    
    
    func checkAnswer() {
        if questionNumber < questionBank.questionList.count &&
            seletedAnswer == questionBank.questionList[questionNumber].answer {
            
        }
    }
    
    
    func startOver() {
        
    }
    
}
