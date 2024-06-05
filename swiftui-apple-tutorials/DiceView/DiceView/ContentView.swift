//
//  ContentView.swift
//  DiceView
//
//  Created by saul on 4/26/24.
//

import SwiftUI

struct ContentView: View {
    @State var numberOfDice: Int = 1
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.title.lowercaseSmallCaps())
                .foregroundColor(.white)
                .bold()

            HStack(spacing: 20) {
                ForEach(1 ... numberOfDice, id: \.self) { value in
                    DiceView(numberOfPips: value)
                }
            }
            HStack {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    numberOfDice -= 1
                }
                .disabled(numberOfDice == 1)

                Button("Add Dice", systemImage: "plus.circle.fill") {
                    numberOfDice += 1
                }
                .disabled(numberOfDice == 4)
            }
            .labelStyle(.iconOnly)
            .font(.title)
            .padding(.top, 2)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
