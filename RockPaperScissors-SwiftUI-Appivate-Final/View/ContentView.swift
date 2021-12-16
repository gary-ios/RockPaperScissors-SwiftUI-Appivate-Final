//
//  ContentView.swift
//  RockPaperScissors-SwiftUI-Appivate-Final
//
//  Created by Gary Maccabe on 16/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State var result = "Select an Option to Play"
    private let gameViewModel = GameViewModel()
    
    var body: some View {
        VStack.init(spacing: 30) {
            Text("\(result)").font(.largeTitle)
            Button {
                result = gameViewModel
                    .getResult(playersChoice: "rock")
            } label: {
                Label("Rock", systemImage: "cube.fill")
            }
            Button {
                result = gameViewModel
                    .getResult(playersChoice: "paper")
            } label: {
                Label("Paper", systemImage: "book")
            }
            Button {
                result = gameViewModel
                    .getResult(playersChoice: "scissors")
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
