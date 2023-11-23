//
//  main.swift
//  GSATechInterviewSolution
//
//  Created by Bharat Shilavat on 20/11/23.
//

import Foundation

//MARK: - Reversing Given String -

func reverseWordsInString(_ input: String) -> String {
    var resultString = ""
    var currentWord = ""

    for char in input {
        if char == " " {
            resultString += reverseString(currentWord) + " "
            currentWord = ""
        } else {
            currentWord.append(char)
        }
    }

    resultString += reverseString(currentWord)

    return resultString
}

func reverseString(_ input: String) -> String {
    var reversed = ""
    for char in input {
        reversed = String(char) + reversed
    }
    return reversed
}

let inputString = "GSA Tech World"
let reversedString = reverseWordsInString(inputString)
print(reversedString)

