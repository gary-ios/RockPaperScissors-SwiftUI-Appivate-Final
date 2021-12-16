//
//  ContentView.swift
//  RockPaperScissors-SwiftUI-Appivate-Final
//
//  Created by Gary Maccabe on 16/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State var result = "Select an Option to Play"
    @State var computersChoice = "..."
    
    private let gameViewModel = GameViewModel()
    
    var body: some View {
        VStack.init(spacing: 30) {
            Text("\(result)").font(.largeTitle)
                .multilineTextAlignment(.center)
            Text("Computer picked \(computersChoice)")
                .multilineTextAlignment(.center)
            
            Button {
                computersChoice = gameViewModel
                    .getComputersChoice()
                result = gameViewModel
                    .getResult(playersChoice: "rock")
                
            } label: {
                Label("Rock", systemImage: "cube.fill")
                    .frame(minWidth: 0, maxWidth: .infinity)
            }.buttonStyle(.bordered)
            Button {
                computersChoice = gameViewModel
                    .getComputersChoice()
                result = gameViewModel
                    .getResult(playersChoice: "paper")
            } label: {
                Label("Paper", systemImage: "book")
                    .frame(minWidth: 0, maxWidth: .infinity)
            }.buttonStyle(.bordered)
            Button {
                computersChoice = gameViewModel
                    .getComputersChoice()
                result = gameViewModel
                    .getResult(playersChoice: "scissors")
            } label: {
                Label("Scissors", systemImage: "scissors")
                    .frame(minWidth: 0, maxWidth: .infinity)
            }.buttonStyle(.bordered)
        }.padding([.leading, .trailing], 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
