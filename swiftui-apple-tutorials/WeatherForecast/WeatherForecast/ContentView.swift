//
//  ContentView.swift
//  WeatherForecast
//
//  Created by saul on 4/25/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 50) {
            ForecastDayView(
                day: "Mon",
                isRainy: false,
                high: 70,
                low: 50
            )
            ForecastDayView(
                day: "Tue",
                isRainy: true,
                high: 60,
                low: 40
            )
        }
    }
}

struct ForecastDayView: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int

    var iconName: String {
        return isRainy
            ? "cloud.drizzle.fill"
            : "sun.max.fill"
    }

    var iconColor: Color {
        return isRainy
            ? Color.blue
            : Color.yellow
    }

    var body: some View {
        VStack {
            Text(day)
                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/ .bold/*@END_MENU_TOKEN@*/)
            Image(systemName: iconName)
                // .resizable()
                // .frame(width: 50, height: 50)
                .font(Font.largeTitle)
                .foregroundColor(iconColor)
                .padding(5)
            Text("High: \(high)")
                .font(.title3)
                .fontWeight(Font.Weight.bold)
            Text("Low: \(low)")
                .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/ .bold/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    ContentView()
}
