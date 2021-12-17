//
//  GameViewModel.swift
//  RockPaperScissors-SwiftUI-Appivate-Final
//
//  Created by Gary Maccabe on 16/12/2021.
//

import Foundation

class GameViewModel {
    
    private var gameModel = GameModel()
    
    init(gameModel: GameModel = GameModel()) {
        self.gameModel = gameModel
    }
    
    func getComputersChoice() -> String {
        return gameModel.setComputersChoice()
    }
    
    func getResult(playersChoice: String, computersChoice: String) -> String {
        return gameModel.setGameResult(playerChoice: playersChoice, computerChoice: computersChoice)
    }
}
