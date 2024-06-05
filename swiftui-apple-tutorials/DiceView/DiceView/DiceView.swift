//
//  DiceView.swift
//  DiceView
//
//  Created by saul on 4/26/24.
//

import SwiftUI

struct DiceView: View {
    @State var numberOfPips: Int = 1

    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: 50, maxHeight: 50)
                .aspectRatio(1, contentMode: .fit)
                .foregroundStyle(.black, .white)

            Button("Roll") {
                withAnimation {
                    numberOfPips = Int.random(in: 1 ... 6)
                }
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
