//
//  Session.swift
//  WeatherPrediction
//
//  Created by Steven Zhang on 2021-10-03.
//

import Foundation

struct Session: Identifiable {
    
    let id = UUID()
    
    // Question that the user asks, must be set to start an advice session
    let question: String
    
    // Response will be provided later
    var response: String = ""
    
}
