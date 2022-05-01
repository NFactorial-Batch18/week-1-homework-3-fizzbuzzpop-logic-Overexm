//
//  main.swift
//  FizzBuzzPop
//
//  Created by Merey Orynbassar on 01.05.2022.
//

import Foundation

enum Choices: Int{
    case three = 3
    case five = 5
    case seven = 7
}

protocol Logic{
    func giveAnswer()
}

struct GameLogic: Logic{
    func giveAnswer() {
        print("Please type your number:")
        if let ch = readLine(){
            switch ((Int(ch) ?? 0) % Choices.three.rawValue == 0,
                    (Int(ch) ?? 0) % Choices.five.rawValue == 0,
                    (Int(ch) ?? 0) % Choices.seven.rawValue == 0){
                    case (true,false,false):
                        print("Fizz")
                    case (false,true,false):
                        print("Buzz")
                    case (false,false,true):
                        print("Pop")
                    case (true,true,false):
                        print("FizzBuzz")
                    case (true,false,true):
                        print("FizzPop")
                    default:
                        print("This value can' not be dividible")
                    }
            
        }
    }
    
    
}

let logic = GameLogic()
logic.giveAnswer()
