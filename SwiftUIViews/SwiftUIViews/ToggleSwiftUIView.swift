//
//  ToggleSwiftUIView.swift
//  SwiftUIViews
//
//  Created by saul on 6/4/24.
//

import SwiftUI

struct ToggleSwiftUIView: View {
    @State var isOn: Bool = false
    var body: some View {
        Form {
            Toggle("Subscribed", isOn: $isOn)
            Text("\(isOn.description)")
                .foregroundColor(isOn == true ? .green : .gray)
        }
    }
}

#Preview {
    ToggleSwiftUIView()
}
