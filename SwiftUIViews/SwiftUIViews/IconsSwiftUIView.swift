//
//  IconsView.swift
//  SwiftUIViews
//
//  Created by saul on 6/4/24.
//

import SwiftUI

struct IconsSwiftUIView: View {
    var body: some View {
        VStack {
            Image(systemName: "apple.logo")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .foregroundColor(.green)

            // some icons has original colors
            Image(systemName: "moon.circle.fill")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    IconsSwiftUIView()
}
