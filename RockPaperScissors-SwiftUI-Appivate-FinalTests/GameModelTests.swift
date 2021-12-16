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
    
    func test_rock_beats_scissors() {
        let result = sut.checkSelection(playerChoice: "rock", computerChoice: "scissors")
        XCTAssertTrue(result)
    }
    
    func test_scissors_beats_paper() {
        let result = sut.checkSelection(playerChoice: "scissors", computerChoice: "paper")
        XCTAssertTrue(result)
    }
    
    func test_paper_beats_rock() {
        let result = sut.checkSelection(playerChoice: "paper", computerChoice: "rock")
        XCTAssertTrue(result)
    }
}
