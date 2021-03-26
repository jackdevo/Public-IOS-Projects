//
//  LocationButton.swift
//  Simple Weather App
//
//  Created by Jack Devonshire on 26/03/2021.
//

import SwiftUI

struct LocationButton: View {
    var text : String
    
    var body: some View {
        Text(text)
            .frame(width: 250, height: 45)
            .background(Color.white)
            .font(.system(size: 20, weight: .medium, design: .default))
            .cornerRadius(10)

    }
}

struct LocationButton_Previews: PreviewProvider {
    static var previews: some View {
        LocationButton(text: "Show Days")
    }
}
