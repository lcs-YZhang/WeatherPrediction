//
//  main.swift
//  WeatherPrediction
//
//  Created by Steven Zhang on 2021-10-03.
//

import Foundation

var advisor = AdviceViewModel()

print("Weather Prediction")
print("===================")

// Loop until user chooses to quit
while true {
    
    print("NOTE: Questions should be about weather prediction.")
    
    print("What is you question?")
    
    // Get input as a non-optional String
    let input = readLine()!
    print("")

    // Provide the advice by using the view model
    print(advisor.provideResponseFor(givenQuery: input))
    
    // Ask whether the user wants to continue or see history of advice
    while true {
        print("")
        print("See history of prediction given? (Y/N)")
        let selection = readLine()!
        if selection == "Y" {
            
            // Show history
            print("")
            print("History")
            print("-------")
            for session in advisor.sessions {
                print(session.question)
                print(session.response)
                print("")
            }
            break
            
        } else if selection == "N" {
            break
        }
    }
    
    // Ask whether the user wants to see more advice
    while true {
        print("More prediction? (Y/N)")
        let selection = readLine()!
        if selection == "Y" {
            break
        } else if selection == "N" {
            exit(0) // Exit program
        }
    }
    
}
