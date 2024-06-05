//
//  CustomModifierSwiftUI.swift
//  SwiftUIViews
//
//  Created by saul on 6/5/24.
//

import SwiftUI

struct DecoratedContainer: ViewModifier {
    var background: Color = .blue
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .foregroundColor(.white)
            .padding(.vertical, 10)
            .padding(.horizontal, 15)
            .background(background)
            .cornerRadius(10)
    }
}

extension View {
    func decoratedContainer(bacground: Color = .blue) -> some View {
        modifier(DecoratedContainer(background: bacground))
    }
}

struct CustomModifierSwiftUI: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .modifier(DecoratedContainer(background: .green))

            // OR using extension
            Text("Sunscribe, Now!")
                .decoratedContainer(bacground: .orange)

            Text("Sunscribe, Now!")
                .decoratedContainer()
        }
    }
}

#Preview {
    CustomModifierSwiftUI()
}
