//
//  StateVsBinding.swift
//  SwiftUIViews
//
//  Created by saul on 6/5/24.
//

import SwiftUI

struct StateVsBinding: View {
    @State var counter: Int = 0
    var body: some View {
        VStack {
            CounterView(counter: $counter)
        }
    }
}

struct CounterView: View {
    @Binding var counter: Int
    var body: some View {
        List {
            Text("\(counter)")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/ .bold/*@END_MENU_TOKEN@*/)

            Stepper("Counter", value: $counter)
        }
    }
}

#Preview {
    StateVsBinding()
}
