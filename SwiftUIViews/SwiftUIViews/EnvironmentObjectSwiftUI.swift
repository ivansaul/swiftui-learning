//
//  EnvironmentObject.swift
//  SwiftUIViews
//
//  Created by saul on 6/5/24.
//

import SwiftUI

struct EnvironmentObjectSwiftUI: View {
    var body: some View {
        View1()
    }
}

struct View1: View {
    @StateObject var counterViewModel = CounterViewModel()
    var body: some View {
        VStack(spacing: 20) {
            Text("Counter: \(counterViewModel.count)")
                .font(.title)
                .fontWeight(.bold)
            View2()
        }
        .padding()
        .border(.blue)
        .environmentObject(counterViewModel)
    }
}

struct View2: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("View 2")
            View3()
        }
        .padding()
        .border(.orange)
    }
}

struct View3: View {
    @EnvironmentObject var counterViewModel: CounterViewModel
    var body: some View {
        VStack(spacing: 20) {
            Text("View 3")
            Text("\(counterViewModel.count)")
            Button("Increment") {
                counterViewModel.increment()
            }
        }
        .padding()
        .border(.red)
    }
}

final class CounterViewModel: ObservableObject {
    @Published var count: Int
    init() {
        count = 0
    }

    func increment() {
        count += 1
    }
}

#Preview {
    EnvironmentObjectSwiftUI()
}
