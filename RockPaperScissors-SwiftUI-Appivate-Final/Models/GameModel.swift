//
//  GameModel.swift
//  RockPaperScissors-SwiftUI-Appivate-Final
//
//  Created by Gary Maccabe on 16/12/2021.
//

import Foundation

class GameModel {
    
    private var answerOptions = AnswerOptions()
    
    init(answerOptions: AnswerOptions = AnswerOptions()) {
        self.answerOptions = answerOptions
    }
    
    func setComputersChoice() -> String {
        guard let result = answerOptions.options.randomElement() else { return ""}
        return result
    }
    
    func setGameResult(playerChoice: String, computerChoice: String) -> String {
        if playerChoice == computerChoice {
            return "Draw"
        }
        
        if playerChoice == "rock" && computerChoice == "scissors" ||
            playerChoice == "paper" && computerChoice == "rock" ||
            playerChoice == "scissors" && computerChoice == "paper" {
            return "Player Wins"
        }
        return "Computer Wins"
    }
}
