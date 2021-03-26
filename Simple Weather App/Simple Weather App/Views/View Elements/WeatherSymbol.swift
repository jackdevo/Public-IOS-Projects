//
//  WeatherSymbol.swift
//  Simple Weather App
//
//  Created by Jack Devonshire on 26/03/2021.
//

import SwiftUI

struct WeatherSymbol: View {
    
    var iconName : String
    var temp : Int
    
    var body: some View {
        Image(systemName: iconName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
        Text("\(temp)° Today")
            .font(.system(size: 35, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(.bottom, 50)
    }
}

struct WeatherSymbol_Previews: PreviewProvider {
    static var previews: some View {
        WeatherSymbol(iconName: "cloud.sun.fill", temp: 22)
    }
}
