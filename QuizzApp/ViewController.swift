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
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = questionBank.questionList[0]
        questionLabel.text = firstQuestion.questionText
        
    }
    
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            seletedAnswer = true
        } else {
            seletedAnswer = false
        }
    }
    
    
    func updateUI() {
        
    }
    
    
    func nextQuestion() {
        
    }
    
    
    func checkAnswer() {
        
    }
    
    
    func startOver() {
        
    }
    
    
    
}
