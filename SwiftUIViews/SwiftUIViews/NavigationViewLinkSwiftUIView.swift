//
//  NavigationViewLinkSwiftUIView.swift
//  SwiftUIViews
//
//  Created by saul on 6/5/24.
//

import SwiftUI

struct NavigationViewLinkSwiftUIView: View {
    @State var isOnWifi = false

    var body: some View {
        NavigationView {
            List {
                Toggle("Wi-Fi", isOn: $isOnWifi)
                NavigationLink("Notifications") {
                    Text("Notifications Screen")
                }
                NavigationLink(
                    destination: {
                        Text("Phone Settings Screen")
                    },
                    label: {
                        HStack {
                            Label(
                                title: {
                                    Text("Phone")
                                },
                                icon: {
                                    Image(systemName: "phone.fill")
                                        .font(.caption)
                                        .padding(5)
                                        .background(.green)
                                        .foregroundColor(.white)
                                        .cornerRadius(5)
                                }
                            )
                            Spacer()
                            Text("No SIM")
                                .font(.callout)
                                .foregroundColor(.gray)
                        }
                    }
                )

                Text("Option menu 1")
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    NavigationViewLinkSwiftUIView()
}
