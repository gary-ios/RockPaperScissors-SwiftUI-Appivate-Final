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
    
    func getResult(playersChoice: String) -> String {
        return gameModel.setGameResult(playerChoice: playersChoice, computerChoice: getComputersChoice())
    }
    
    func getComputersChoice() -> String {
        return gameModel.setComputersChoice()
    }
}
