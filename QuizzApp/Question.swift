//
//  Question.swift
//  QuizzApp
//
//  Created by Ankit Kumar on 18/02/2018.
//  Copyright © 2018 Ankit Kumar. All rights reserved.
//

import Foundation
class Question {
    let questionText : String
    let answer : Bool
    init(text : String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
