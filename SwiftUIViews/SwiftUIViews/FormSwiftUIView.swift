//
//  FormSwiftUIView.swift
//  SwiftUIViews
//
//  Created by saul on 6/5/24.
//

import SwiftUI

struct FormSwiftUIView: View {
    @State var isOnWiFi: Bool = false
    @State var isOnAirplaneMode: Bool = false
    @State var date = Date()
    @State var color = Color.blue

    var body: some View {
        Form {
            Section("Network") {
                Toggle(isOn: $isOnWiFi, label: {
                    Label(
                        title: {
                            Text("Airplane Mode")
                        },
                        icon: {
                            DecoratedIconView(iconName: "airplane", iconColor: .green)
                        }
                    )

                })
                Toggle(
                    isOn: $isOnAirplaneMode,
                    label: {
                        Label(
                            title: { Text("Wi-Fi") },
                            icon: {
                                DecoratedIconView(iconName: "wifi", iconColor: .blue)
                            }
                        )
                    }
                )
            }

            Section(
                header: Text("Settings"),
                footer: HStack {
                    Spacer()
                    Text("version v0.1")
                },
                content: {
                    DatePicker("Date", selection: $date)
                    ColorPicker("Color", selection: $color)
                }
            )
        }
    }
}

#Preview {
    FormSwiftUIView()
}

struct DecoratedIconView: View {
    var iconName: String
    var iconColor: Color
    var body: some View {
        Image(systemName: iconName)
            .font(.caption)
            .foregroundColor(.white)
            .padding(.all, 4)
            .background(iconColor)
            .cornerRadius(5)
    }
}
