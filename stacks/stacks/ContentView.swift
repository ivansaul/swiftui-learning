//
//  ContentView.swift
//  stacks
//
//  Created by ivansaul on 12/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Siguiendo")
                .bold()
                .font(.largeTitle)
            Text("CANALES RECOMEDADOS")
                .bold()
                .foregroundColor(.gray)
            HStack {
                ZStack {
                    Rectangle()
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .foregroundColor(.blue)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 80)
                    Image(systemName: "applelogo")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 25, height: 30)
                    
                }
                VStack(alignment: .leading, content: {
                    HStack {
                        Circle()
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .frame(width: 20)
                            
                        Text("username")
                            .bold()
                    }
                    Text("Streaming and programmming")
                        .foregroundColor(.gray)
                    Text("Only Speak")
                        .foregroundColor(.gray)
                })
            }
            
        }
    }
}

#Preview {
    ContentView()
}

