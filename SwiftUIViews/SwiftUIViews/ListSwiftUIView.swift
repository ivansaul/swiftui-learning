//
//  ListSwiftUIView.swift
//  SwiftUIViews
//
//  Created by saul on 6/5/24.
//

import SwiftUI

struct Device {
    var title: String
    var iconName: String
}

let homeDevices = [
    Device(title: "Laptop", iconName: "laptopcomputer"),
    Device(title: "Mac Mini", iconName: "macmini"),
    Device(title: "Apple TV", iconName: "appletv")
]

let workDevices = [
    Device(title: "iPhone", iconName: "iphone.gen1"),
    Device(title: "Airpods", iconName: "airpods"),
    Device(title: "Apple Watch", iconName: "applewatch")
]

struct ListSwiftUIView: View {
    var body: some View {
        List {
            Section("Home") {
                ForEach(homeDevices, id: \.title) { device in
                    Label(device.title, systemImage: device.iconName)
                }
            }
            Section("Work") {
                ForEach(workDevices, id: \.title) { device in
                    Label(device.title, systemImage: device.iconName)
                }
            }
        }
        .listStyle(InsetListStyle())
    }
}

#Preview {
    ListSwiftUIView()
}
