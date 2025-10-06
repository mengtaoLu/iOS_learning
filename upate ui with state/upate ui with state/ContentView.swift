//
//ContentView.swift
//upate ui with state
//
//Created by Mengtao on 2025/10/5.
//Copyright (c) 2025 .
  

import SwiftUI

struct ContentView: View {
    
    @State private var numberOfDices: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Rolling")
                .font(.largeTitle.uppercaseSmallCaps())
            
            HStack {
                ForEach(1...numberOfDices,id: \.description) {
                    _ in DiceView()
                }
            }
            
            HStack{
                Button("Remove Dice") {
                    withAnimation{
                        numberOfDices -= 1
                    }
                }
                .buttonStyle(.bordered)
                .disabled(numberOfDices <= 1)
                
                Button("Add Dice",systemImage: "plus.circle.fill") {
                    withAnimation{
                        numberOfDices += 1
                    }
                }
                .buttonStyle(.bordered)
                .disabled(numberOfDices >= 5)
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(.title)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
