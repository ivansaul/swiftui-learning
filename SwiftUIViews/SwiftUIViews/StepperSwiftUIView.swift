//
//  StepperSwiftUIView.swift
//  SwiftUIViews
//
//  Created by saul on 6/4/24.
//

import SwiftUI

struct StepperSwiftUIView: View {
    @State var iphoneCounter: Int = 1
    @State var macCounter: Int = 1
    var body: some View {
        let step = 2
        let range = 1 ... 10

        Form {
            Stepper("iPhone: \(iphoneCounter)",
                    value: $iphoneCounter,
                    in: range,
                    step: step)

            // or
            Stepper(
                "Laptops: \(macCounter)",
                onIncrement: {
                    if macCounter >= 10 {
                        macCounter = 10
                    } else {
                        macCounter += 2
                    }
                },
                onDecrement: {
                    if macCounter <= 1 {
                        macCounter = 1
                    } else {
                        macCounter -= 2
                    }
                })
        }
    }
}

#Preview {
    StepperSwiftUIView()
}
