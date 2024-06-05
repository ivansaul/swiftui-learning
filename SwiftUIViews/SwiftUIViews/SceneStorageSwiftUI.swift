//
//  SceneStorageSwiftUI.swift
//  SwiftUIViews
//
//  Created by saul on 6/5/24.
//

import SwiftUI

struct SceneStorageSwiftUI: View {
    @SceneStorage("tweet") var tweet: String = ""
    @SceneStorage("tweet_toggle") var isPublic: Bool = false
    var body: some View {
        Form {
            TextEditor(text: $tweet)
                .frame(height: 150)

            Toggle("Public", isOn: $isPublic)

            HStack {
                Spacer()
                Button("Tweet Now") {
                    print(tweet)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    SceneStorageSwiftUI()
}
