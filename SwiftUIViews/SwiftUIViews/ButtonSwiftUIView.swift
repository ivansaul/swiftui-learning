//
//  ButtonSwiftUIView.swift
//  SwiftUIViews
//
//  Created by saul on 6/4/24.
//

import SwiftUI

struct ButtonSwiftUIView: View {
    var body: some View {
        VStack(spacing: 10) {
            // Text Button
            Button("Subscribe") {}

            // Filled Button
            Button(action: {}, label: {
                Text("Subscribe")
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 15)
                    .background(.blue)
                    .cornerRadius(15)

            })

            // Icon Button
            Button(action: {}, label: {
                Image(systemName: "hand.thumbsup.fill")
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            })

            // Icon Button 2
            Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                Circle()
                    .frame(width: 50)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay {
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.white)
                            .font(.title3)
                    }
            })
        }
    }
}

#Preview {
    ButtonSwiftUIView()
}
