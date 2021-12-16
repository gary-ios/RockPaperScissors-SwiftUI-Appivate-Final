//
//  GameModelTests.swift
//  RockPaperScissors-SwiftUI-Appivate-FinalTests
//
//  Created by Gary Maccabe on 16/12/2021.
//

@testable import RockPaperScissors_SwiftUI_Appivate_Final
import XCTest

class GameModelTests :  XCTestCase {
    
    var sut = GameModel()
    
    override func setUpWithError() throws {
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }
    
    func test_rock_beats_scissors_andPlayerWins() {
        let result = sut.getGameResult(playerChoice: "rock", computerChoice: "scissors")
        XCTAssertEqual(result, "Player Wins")
    }
    
    func test_scissors_beats_paper_andPlayerWins() {
        let result = sut.getGameResult(playerChoice: "scissors", computerChoice: "paper")
        XCTAssertEqual(result, "Player Wins")
    }
    
    func test_paper_beats_rock_andPlayerWins() {
        let result = sut.getGameResult(playerChoice: "paper", computerChoice: "rock")
        XCTAssertEqual(result, "Player Wins")
    }
    
    func test_draw() {
        let result = sut.getGameResult(playerChoice: "rock", computerChoice: "rock")
        XCTAssertEqual(result, "Draw")
    }
    
    func test_paper_beats_rock_andComputerWins() {
        let result = sut.getGameResult(playerChoice: "rock", computerChoice: "paper")
        XCTAssertEqual(result, "Computer Wins")
    }
    
    func test_scissors_beats_paper_andComputerWins() {
        let result = sut.getGameResult(playerChoice: "paper", computerChoice: "scissors")
        XCTAssertEqual(result, "Computer Wins")
    }
    
    func test_rock_beats_scissors_andComputerWins() {
        let result = sut.getGameResult(playerChoice: "scissors", computerChoice: "rock")
        XCTAssertEqual(result, "Computer Wins")
    }
    
    func test_computer_randomlySelectsAnswer_fromAnArray() {
        let answerOptions: [String] = ["rock"]
        let computersChoice = sut.setComputersChoice(answerOptions: answerOptions)
        XCTAssertEqual(computersChoice, "rock")
    }
}
