//
//  main.swift
//  UnknownNumber
//
//  Created by User on 23/03/2020.
//  Copyright © 2020 Fuad Rustamov. All rights reserved.
//

import Foundation
//Random number generation
let randNum = UInt(arc4random_uniform(50))
print("Computer generated a random numder from 0 to 50 included.\nYou have to guess it.")

//Message dictionary
var message = ["start": "Enter a number from 0 to 50 and tap Enter: ",
               "more":  "Your number is greater.Try again.",
               "less":  "Your number is lower.Try again.",
               "win":   "You guessed unknown number! Congratulations!"]

var myNumber : String?
repeat {
    repeat {
        print(message["start"]!)
        myNumber = readLine()
    }while UInt(myNumber!) == nil || UInt(myNumber!)! > 50 || UInt(myNumber!)! < 0
    
    if UInt(myNumber!)! > randNum {
        print(message["more"]!)
    }
    else if UInt(myNumber!)! < randNum {
        print(message["less"]!)
    }
}while randNum != UInt(myNumber!)

print(message["win"]!)



