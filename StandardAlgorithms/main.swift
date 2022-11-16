//
//  main.swift
//  StandardAlgorithms
//
//  Created by Guo, Dylan (Coll) on 05/11/2022.
//

import Foundation

func makeQuestion(_ message: String) -> String {
    let sentence = "\(message)?"
    return sentence
}
print("Hello, Dylan Guo!")

let question = "How are you today"

print(makeQuestion(question))

let array = [1,2,3,4,5]
let left = array[0...3]
print(left)
