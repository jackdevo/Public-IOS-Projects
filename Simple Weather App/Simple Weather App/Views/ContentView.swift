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
                    WeatherDayTile(dayTime: "Tue", iconName: "sun.max.fill", temp: 26)
                    WeatherDayTile(dayTime: "Wed", iconName: "sun.max.fill", temp: 22)
                    WeatherDayTile(dayTime: "Thur", iconName: "sun.max.fill", temp: 19)
                    WeatherDayTile(dayTime: "Fri", iconName: "sun.max.fill", temp: 15)
                    WeatherDayTile(dayTime: "Sat", iconName: "sun.max.fill", temp: 15)
                }
                
                Spacer()
                Button {
                    print("tapped")
                } label: {
                    LocationButton(text: "Show Hours")
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
