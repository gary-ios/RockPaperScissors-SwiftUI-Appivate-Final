//
//  ContentView.swift
//  RockPaperScissors-SwiftUI-Appivate-Final
//
//  Created by Gary Maccabe on 16/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State var result = ""
    private let gameModel = GameModel()
    
    var body: some View {
        VStack.init(spacing: 30) {
            Text("\(result)")
                .font(.largeTitle)
            Button {
                result = gameModel.getGameResult(playerChoice: "rock", computerChoice: gameModel.setComputersChoice())
            } label: {
                Label("Rock", systemImage: "cube.fill")
            }
            Button {
                result = gameModel.getGameResult(playerChoice: "paper", computerChoice: gameModel.setComputersChoice())
            } label: {
                Label("Paper", systemImage: "book")
            }
            Button {
                result = gameModel.getGameResult(playerChoice: "scissors", computerChoice: gameModel.setComputersChoice())
            } label: {
                Label("Scissors", systemImage: "scissors")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
