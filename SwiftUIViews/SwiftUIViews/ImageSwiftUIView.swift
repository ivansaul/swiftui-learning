//
//  ImageView.swift
//  SwiftUIViews
//
//  Created by saul on 6/4/24.
//

import SwiftUI

struct ImageSwiftUIView: View {
    var body: some View {
        VStack {
            // Load from Assets
            // if it's a svg or pdf in Assets properties
            // select scales -> Single Scale
            Image("rust-logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200)

            // if we want to change the default color
            // just add renderingMode(.template)
            // and change the color
            Image("rust-logo")
                .renderingMode(/*@START_MENU_TOKEN@*/ .template/*@END_MENU_TOKEN@*/)
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .foregroundColor(/*@START_MENU_TOKEN@*/ .blue/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ImageSwiftUIView()
}
