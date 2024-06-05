//
//  WelcomePage.swift
//  OnboardingFlow
//
//  Created by saul on 4/25/24.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .foregroundColor(/*@START_MENU_TOKEN@*/ .blue/*@END_MENU_TOKEN@*/)
                    .cornerRadius(20)

                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }

            Text("Welcome to my App")
                .font(.title2)
                .fontWeight(.semibold)

            Text("Description Text")
                .font(.subheadline)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
