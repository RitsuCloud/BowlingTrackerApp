//
//  ContentView.swift
//  BowlingTracker
//
//  Created by Chon Hin Chou on 7/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        VStack {
            
            Button {
                newGameHandler();
            } label: {
//                Image(.newGame)
//                    .resizable()
//                    .frame(width: 120, height: 120, alignment: .bottom)
                Text("New Game")
                    .padding(20)
                    .border(Color.purple)
                    .position(x: 180, y: 700)
            }
        }
        .padding()
    }
    
    func newGameHandler() {
        print("Just a placeholder")
    }
}

#Preview {
    // We want the preview to be content view.
    ContentView()
}
