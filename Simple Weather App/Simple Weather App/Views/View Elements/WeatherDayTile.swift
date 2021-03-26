//
//  WeatherDayTile.swift
//  Simple Weather App
//
//  Created by Jack Devonshire on 26/03/2021.
//

import SwiftUI

struct WeatherDayTile: View {
    
    var day : String
    var iconName: String
    var temp: Int
    
    var body: some View {
        ZStack {
            //BackgroundGradient()
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.white)
                .frame(width: 56, height: 140, alignment: .center)
            VStack {
                Text(day)
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .medium, design: .default))
                
                Image(systemName: iconName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                Text("\(temp)°")
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .foregroundColor(.black)
            }
            .padding(.leading, 10)
            .padding(.trailing, 10)
        }
    }
}

struct WeatherDayTile_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDayTile(day: "TUE", iconName: "sun.max.fill", temp: 26)
    }
}
