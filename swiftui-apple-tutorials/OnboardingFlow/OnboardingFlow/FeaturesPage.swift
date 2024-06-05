//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by saul on 4/25/24.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack {
            Text("Features")
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/ .bold/*@END_MENU_TOKEN@*/)

            FeatureCard(
                iconName: "person.2.crop.square.stack.fill",
                description: "Multile description about a feature paired with the image on the left. More text "
            )

            FeatureCard(
                iconName: "ellipsis.message.fill",
                description: "Short summary."
            )
        }
        .padding(.horizontal)
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
        .background(Gradient(colors: gradientColor))
        .foregroundColor(.white)
}

struct FeatureCard: View {
    let iconName: String
    let description: String

    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)

            Text(description)

            Spacer()
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 20)
                .foregroundStyle(.tint)
                .opacity(0.25)
                .brightness(-0.4)
        }

        .foregroundStyle(.white)
    }
}
