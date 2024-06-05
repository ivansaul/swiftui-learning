//
//  ContentView.swift
//  swiftui-widgets
//
//  Created by saul on 4/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ButtonsView()
        // ListSectionView()
    }
}

///
/// BUTTON
///

struct ButtonsView: View {
    var body: some View {
        VStack {
            Button("Done") {}
                .buttonStyle(BorderedProminentButtonStyle())

            Button(action: /*@START_MENU_TOKEN@*/ {}/*@END_MENU_TOKEN@*/, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(15)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

            })

            Button("Suscribe".uppercased(), systemImage: "iphone") {
                print("pressed")
            }
            .fontWeight(.bold)
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(15)
            .buttonStyle(BorderedButtonStyle())
        }
    }
}

///
/// LIST - SECTION
///

struct Device {
    let name: String
    let image: String
}

let homeDevices: [Device] = [
    Device(name: "Laptop", image: "laptopcomputer"),
    Device(name: "Mac Mini", image: "macmini"),
    Device(name: "Apple TV", image: "appletv"),
]

let workDevices: [Device] = [
    Device(name: "iPhone", image: "iphone"),
    Device(name: "iPad", image: "ipad"),
    Device(name: "Apple Watch", image: "applewatch"),
]

struct ListSectionView: View {
    var body: some View {
        List {
            Section(header: Text("Home")) {
                ForEach(homeDevices, id: \.name) { device in
                    Label(device.name, systemImage: device.image)
                }
            }
            Section(header: Text("Work")) {
                ForEach(workDevices, id: \.name) { device in
                    Label(device.name, systemImage: device.image)
                }
            }
        }
        .listStyle(SidebarListStyle())
    }
}

#Preview {
    ContentView()
}
