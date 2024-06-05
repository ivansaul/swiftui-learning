//
//  LabelView.swift
//  SwiftUIViews
//
//  Created by saul on 6/4/24.
//

import SwiftUI

struct LabelSwiftUIView: View {
    var body: some View {
        // A Label consist a icon with a title
        VStack(spacing: 20) {
            Label("10K", systemImage: "hand.thumbsup.fill")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(/*@START_MENU_TOKEN@*/ .blue/*@END_MENU_TOKEN@*/)

            Label("10K", systemImage: "hand.thumbsup.fill")
                .labelStyle(IconOnlyLabelStyle())
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.red)

            Label("10K", systemImage: "hand.thumbsup.fill")
                .labelStyle(TitleOnlyLabelStyle())
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.green)
        }
    }
}

#Preview {
    LabelSwiftUIView()
}
