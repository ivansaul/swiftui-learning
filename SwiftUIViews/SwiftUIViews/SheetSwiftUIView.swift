//
//  SheetSwiftUIView.swift
//  SwiftUIViews
//
//  Created by saul on 6/5/24.
//

import SwiftUI

struct SheetSwiftUIView: View {
    @State var isPresented = false
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "applelogo")
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.blue)

            Button(
                action: {
                    isPresented = true
                },
                label: {
                    Text("Subscribe")
                        .padding(.vertical, 8)
                        .padding(.horizontal, 15)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            )
        }
        // for fullscreen cover just change with .fullScreenCover
        // but it'is not available for macOS
        .sheet(
            isPresented: $isPresented,
            onDismiss: {
                isPresented = false
            },
            content: {
                ZStack {
                    Color.blue.ignoresSafeArea()
                    Button(
                        action: {
                            isPresented = false
                        },
                        label: {
                            Text("Close")
                                .padding(.vertical, 8)
                                .padding(.horizontal, 15)
                                .background(.orange)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    )
                }
            }
        )
    }
}

#Preview {
    SheetSwiftUIView()
}
