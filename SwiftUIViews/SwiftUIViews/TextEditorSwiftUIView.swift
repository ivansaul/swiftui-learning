//
//  TextEditorSwiftUIView.swift
//  SwiftUIViews
//
//  Created by saul on 6/4/24.
//

import SwiftUI

struct TextEditorSwiftUIView: View {
    @State var text: String = "Type something..."
    @State var counter: Int = 0
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .onChange(of: text) { _, newValue in
                    counter = newValue.count
                }
            Text("\(counter)")
                .foregroundColor(counter > 20 ? .red : .blue)
        }
    }
}

#Preview {
    TextEditorSwiftUIView()
}
