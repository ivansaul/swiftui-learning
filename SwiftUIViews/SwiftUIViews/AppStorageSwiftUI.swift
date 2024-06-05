//
//  AppStorageSwiftUI.swift
//  SwiftUIViews
//
//  Created by saul on 6/5/24.
//

import SwiftUI

struct AppStorageSwiftUI: View {
    @State var username: String = ""
    @AppStorage("usernameAppStorageKey") var usernameAppStorage: String = ""
    var body: some View {
        Form {
            TextField("Username", text: $username)

            HStack {
                Spacer()
                Button("Save") {
                    usernameAppStorage = username
                }
                Spacer()
            }

            HStack {
                Spacer()
                Button("Print Saved Username") {
                    print(UserDefaults.standard.string(forKey: "usernameAppStorageKey") ?? "Key not found")
                }
                Spacer()
            }
        }
        .onAppear {
            username = usernameAppStorage
        }
    }
}

#Preview {
    AppStorageSwiftUI()
}
