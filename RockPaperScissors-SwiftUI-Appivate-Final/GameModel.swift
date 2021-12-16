//
//  GameModel.swift
//  RockPaperScissors-SwiftUI-Appivate-Final
//
//  Created by Gary Maccabe on 16/12/2021.
//

import Foundation

class GameModel {
    
    func checkSelection(playerChoice: String, computerChoice: String) -> String {
        
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
