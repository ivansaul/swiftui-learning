//
//  LazyGridSwiftUIView.swift
//  SwiftUIViews
//
//  Created by saul on 6/5/24.
//

import SwiftUI

struct LazyGridSwiftUIView: View {
    var body: some View {
        let items = 1 ... 500
        let gridItems = [
            GridItem(.fixed(100)),
            GridItem(.flexible(minimum: 20)),
            GridItem(.fixed(100)),
        ]

        let gridItem = [
            GridItem(.flexible(minimum: 100)),
        ]

        ScrollView {
            LazyVGrid(columns: gridItem, content: {
                ForEach(items, id: \.self) { item in
                    VStack {
                        Text("Item: \(item)")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                            .background(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    }
                }

            })
        }

        ScrollView {
            LazyVGrid(columns: gridItems, content: {
                ForEach(items, id: \.self) { item in
                    VStack {
                        Circle()
                            .frame(width: 40)
                        Text("\(item)")
                    }
                }

            })
        }

        ScrollView(.horizontal) {
            LazyHGrid(rows: gridItems, content: {
                ForEach(items, id: \.self) { item in
                    VStack {
                        Circle()
                            .frame(width: 40)
                        Text("\(item)")
                    }
                }

            })
        }
    }
}

#Preview {
    LazyGridSwiftUIView()
}
