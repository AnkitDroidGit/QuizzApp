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
    var score : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
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
//        scoreLabel.text = String(score)
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1)/ \(questionBank.questionList.count)"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    
    
    func nextQuestion() {
        if questionNumber < questionBank.questionList.count {
            questionLabel.text = questionBank.questionList[questionNumber].questionText
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome", message: "You have finished all the questions. Do you want to restart?", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Restart", style: .default, handler: {_ in
                self.startOver()
            })
            
            alert.addAction(alertAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        if questionNumber < questionBank.questionList.count &&
            seletedAnswer == questionBank.questionList[questionNumber].answer {
            score += 1
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        nextQuestion()
    }
}
