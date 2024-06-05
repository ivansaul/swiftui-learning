//
//  TextFieldSwiftUIView.swift
//  SwiftUIViews
//
//  Created by saul on 6/4/24.
//

import SwiftUI

struct TextFieldSwiftUIView: View {
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .autocorrectionDisabled(true)
                .font(.headline)
                .padding(10)
                .background(.gray.opacity(0.5))
                .cornerRadius(10)
                .onChange(of: username) { oldValue, newValue in
                    print("old value: \(oldValue)")
                    print("new value: \(newValue)")
                }

            SecureField("Password", text: $password)
                .autocorrectionDisabled(true)
                .font(.headline)
                .padding(10)
                .background(.gray.opacity(0.5))
                .cornerRadius(10)
                .onChange(of: password) { oldValue, newValue in
                    print("old value: \(oldValue)")
                    print("new value: \(newValue)")
                }

            // Outlined style
            SecureField("Password", text: $password)
                .autocorrectionDisabled(true)
                .font(.headline)
                .padding(10)
                .cornerRadius(10)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 2)
                })
                .onChange(of: password) { oldValue, newValue in
                    print("old value: \(oldValue)")
                    print("new value: \(newValue)")
                }

            Spacer()
        }
    }
}

#Preview {
    TextFieldSwiftUIView()
        .padding()
}
