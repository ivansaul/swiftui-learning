//
//  SwipeActionsSwiftUI.swift
//  SwiftUIViews
//
//  Created by saul on 6/5/24.
//

import SwiftUI

struct Devices {
    let title: String
    let imageName: String
}

let devices = [
    Device(title: "iPhone", iconName: "iphone.gen1"),
    Device(title: "Airpods", iconName: "airpods"),
    Device(title: "Apple Watch", iconName: "applewatch")
]

struct SwipeActionsRefreshableSwiftUI: View {
    var body: some View {
        List(devices, id: \.title) { device in
            Label(device.title, systemImage: device.iconName)
                .swipeActions {
                    Button(
                        action: {
                            print("Favorite")
                        },
                        label: {
                            Image(systemName: "star.fill")
                        }
                    )
                    .tint(.blue)

                    Button(
                        action: {
                            print("Sending")
                        },
                        label: {
                            Image(systemName: "paperplane.fill")
                        }
                    )
                    .tint(.green)
                }
                .swipeActions(edge: .leading) {
                    Button(
                        action: {
                            print("Deleted")
                        },
                        label: {
                            Image(systemName: "trash.fill")
                        }
                    )
                    .tint(.red)
                }
        }
        .refreshable {
            print("Reloading")
        }
    }
}

#Preview {
    SwipeActionsRefreshableSwiftUI()
}
