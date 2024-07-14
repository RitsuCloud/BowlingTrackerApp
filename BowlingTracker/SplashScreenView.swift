//
//  SplashScreenView.swift
//  BowlingTracker
//
//  Created by Chon Hin Chou on 7/13/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false

    // This is for the animation
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack{
                VStack{
                    Image(._8964703)
                        .resizable()
                        .frame(width: 120, height: 120)
                    Text("Lets Go Bowling!")
                        .font(.system(size: 30))
                        .foregroundColor(.black.opacity(0.8))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
