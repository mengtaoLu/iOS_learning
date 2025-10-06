//
//DiceView.swift
//upate ui with state
//
//Created by Mengtao on 2025/10/5.
//Copyright (c) 2025 .
  
import SwiftUI

struct DiceView: View {
    @State private var numberOfDices: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfDices)")
                .resizable()
                .frame(maxWidth:100,maxHeight:100)
                .aspectRatio(1, contentMode: .fit)
            Button("Roll") {
                withAnimation{
                    numberOfDices = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
        }

    }
}

#Preview {
    DiceView()
}
