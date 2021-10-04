//
//  AdviceViewModel.swift
//  WeatherPrediction
//
//  Created by Steven Zhang on 2021-10-03.
//

import Foundation
import SwiftUI

class AdviceViewModel: ObservableObject {
    
    // History of advice sessions
    @Published var sessions: [Session] = []    // empty array to start
    
    // Given a question, provide some advice
    // Library shortcut: Command-Shift-L
    func provideResponseFor(givenQuery: String) -> String {
        
        // Start an advice session
        var currentSession = Session(question: givenQuery)

        // Use the static function right from the Magic8Ball type (no instance required!)
        currentSession.response = WeatherPrediction.getResponse()

        // Save the question and the advice given to the history
        sessions.append(currentSession)
        
        // Give the response back
        return currentSession.response
        
    }
    
}
