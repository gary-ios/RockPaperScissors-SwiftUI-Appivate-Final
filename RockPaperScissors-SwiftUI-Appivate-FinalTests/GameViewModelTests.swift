//
//  GameViewModelTests.swift
//  RockPaperScissors-SwiftUI-Appivate-FinalTests
//
//  Created by Gary Maccabe on 16/12/2021.
//

import XCTest
@testable import RockPaperScissors_SwiftUI_Appivate_Final

class GameViewModelTests: XCTestCase {
    
    override func setUpWithError() throws {
        try super.setUpWithError()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }
    
    func test_whenPlayersOptionMatchesComputers_theyDraw() {
        let gameViewModel = GameViewModel(
            gameModel: GameModel(answerOptions: AnswerOptions.init(options: ["rock"])))
        
        let result = gameViewModel.getResult(playersChoice: "rock", computersChoice: gameViewModel.getComputersChoice())
        XCTAssertEqual(result, "Draw")
    }
    
    func test_whenComputerSelectsPaper_andPlayerSelectsRock_computerWins() {
        let gameViewModel = GameViewModel(
            gameModel: GameModel(answerOptions: AnswerOptions.init(options: ["paper"])))
        
        let result = gameViewModel.getResult(playersChoice: "rock", computersChoice: gameViewModel.getComputersChoice())
        XCTAssertEqual(result, "Computer Wins")
    }
    
    func test_whenComputerSelectsRock_andPlayerSelectsPaper_playerWins() {
        let gameViewModel = GameViewModel(
            gameModel: GameModel(answerOptions: AnswerOptions.init(options: ["rock"])))
        
        let result = gameViewModel.getResult(playersChoice: "paper", computersChoice: gameViewModel.getComputersChoice())
        XCTAssertEqual(result, "Player Wins")
    }
    
    func test_computerCanSelect_paper() {
        let gameViewModel = GameViewModel(
            gameModel: GameModel(answerOptions: AnswerOptions.init(options: ["paper"])))
        XCTAssertEqual(gameViewModel.getComputersChoice(), "paper")
    }
}
