//
//  TextSwiftUIView.swift
//  SwiftUIViews
//
//  Created by saul on 6/4/24.
//

import SwiftUI

struct TextSwiftUIView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("SwiftUI is an innovative framework for developing user interfaces across all Apple platforms.")
                .underline()
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                .lineLimit(3)
                .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .shadow(color: .gray, radius: 2, x: 0, y: 10)
                .rotation3DEffect(
                    .degrees(40),
                    axis: (x: 1.0, y: 0.0, z: 0.0)
                )

            // concatenate multiple texts
            Text("Hello")
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/ .blue/*@END_MENU_TOKEN@*/)

                + Text("World!")
                .foregroundColor(.green)

            // Date formatting
            Text(Date(), style: .date)
            Text(Date(), style: .time)
            Text(Date(), style: .offset)
            Text(Date(), style: .timer)
            Text(Date().addingTimeInterval(60), style: .timer)
        }
        .padding(30)
    }
}

#Preview {
    TextSwiftUIView()
}
