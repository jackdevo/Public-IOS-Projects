//
//  ContentView.swift
//  Simple Weather App
//
//  Created by Jack Devonshire on 26/03/2021.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundGradient()
            VStack {
                LocationTitle(locationName: "Birmingham, UK")
                WeatherSymbol(iconName: "cloud.sun.fill", temp: 22)
                HStack {
                    WeatherDayTile(day: "Tue", iconName: "sun.max.fill", temp: 26)
                    WeatherDayTile(day: "Wed", iconName: "sun.max.fill", temp: 22)
                    WeatherDayTile(day: "Thur", iconName: "sun.max.fill", temp: 19)
                    WeatherDayTile(day: "Fri", iconName: "sun.max.fill", temp: 15)
                    WeatherDayTile(day: "Sat", iconName: "sun.max.fill", temp: 15)
                }
                
                Spacer()
                Button {
                    print("tapped")
                } label: {
                    LocationButton(text: "Show Days")
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
