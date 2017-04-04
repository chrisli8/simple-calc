//
//  SimpleCalc.swift
//  
//
//  Created by Chris Li on 4/3/17.
//  The following is a program that allows a user to type in
//  on number, an operator, and another number to get the result
//  there are some other operations: "count", "avg", "fact"

import Foundation

while true {
    print("Enter an expression separated by returns:")
    let StringOne = String(readLine(strippingNewline: true)!)
    var numberArray = StringOne!.components(separatedBy: " ")
    
    // count reaction
    let endOfArray = numberArray.count - 1
    if numberArray[endOfArray] == "count" {
        print("=> \(numberArray.count - 1)")
    
    // average reation
    } else if numberArray[endOfArray] == "avg" {
        var total = 0
        for index in 0...(endOfArray - 1) {
            total += Int.init(numberArray[index])!
        }
        print("=> \(total/endOfArray)")
    
    // factorial reation
    // 0! is 1 which is mathmatically correct
    } else if numberArray[endOfArray] == "fact" {
        if (endOfArray <= 1) {
            var total = 1
            let firstNumber = Int.init(numberArray[0])
            for index in 1...firstNumber! {
               total *= index
            }
            print("=> \(total)")
        } else {
            print("too many numbers, requres one")
        }
        
    // otherwise do basic math
    } else {
    
        let operatorOne = String(readLine(strippingNewline: true)!)
        let numberTwo = Int(readLine(strippingNewline:true)!)
        let numberOne = Int.init(StringOne!)
        if numberOne != nil && numberTwo != nil {
            if operatorOne == "+" || operatorOne == "-" ||
                operatorOne == "*" || operatorOne == "/" ||
                operatorOne == "%" {
                
                // Does the proper calculation based on what the user types
                if operatorOne == "+" {
                    print("Result: \(numberOne! + numberTwo!)")
                } else if operatorOne == "-" {
                    print("Result: \(numberOne! - numberTwo!)")
                } else if operatorOne == "*" {
                    print("Result: \(numberOne! * numberTwo!)")
                } else if operatorOne == "%" {
                    print("Result: \(numberOne! % numberTwo!)")
                } else if operatorOne == "/" {
                    print("Result: \(numberOne! / numberTwo!)")
                }
            } else {
                print("incorrect operator")
            }
        } else {
            print("You did not enter a valid number")
        }
    }
}
