//
//  ObservedObjectVsStateObject.swift
//  SwiftUIViews
//
//  Created by saul on 6/5/24.
//

import SwiftUI

struct ObservedObjectVsStateObject: View {
    @State var counter: Int = 0
    @State var topics: [String] = [
        "Python",
        "Swift",
        "Dart"
    ]

    func addMoreTopics() {
        topics.append("New Topic")
    }

    var body: some View {
        VStack {
            Text("Counter: \(counter)")
                .font(.title)
                .fontWeight(.bold)
            Button("Increment") {
                counter += 1
            }
            TopicsView()
        }
    }
}

struct TopicsView: View {
    // @ObservedObject var topicsViewModel = TopicsViewModel()
    @StateObject var topicsViewModel = TopicsViewModel()
    var body: some View {
        NavigationStack {
            List(topicsViewModel.topics, id: \.self) { topic in
                Text(topic)
            }
            .navigationTitle("Topics")

            Button("Add More Topics") {
                topicsViewModel.addMoreTopics()
                print(topicsViewModel.topics)
            }
        }
    }
}

final class TopicsViewModel: ObservableObject {
    @Published var topics: [String] = []

    init() {
        topics = [
            "Python",
            "Swift",
            "Dart"
        ]
    }

    func addMoreTopics() {
        topics.append("New Topic")
    }
}

#Preview {
    ObservedObjectVsStateObject()
}
