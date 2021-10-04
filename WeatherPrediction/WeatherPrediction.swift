//
//  WeatherPrediction.swift
//  WeatherPrediction
//
//  Created by Steven Zhang on 2021-10-03.
//

import Foundation

struct WeatherPrediction {
    
    // Open Library
    // Command-Shift-L
    static func getResponse() -> String {
        
        let responses = [
        "-30°C",
        "-27°C",
        "-21°C",
        "-16°C",
        "-8°C",
        "3°C",
        "7°C",
        "15°C",
        "18°C",
        "22°C",
        "26°C",
        "29°C",
        "33°C",
        "35°C",
        "38°C",
        ]
        
        return responses.randomElement()!
        
    }
    
}
