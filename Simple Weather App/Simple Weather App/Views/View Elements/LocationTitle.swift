//
//  LocationTitle.swift
//  Simple Weather App
//
//  Created by Jack Devonshire on 26/03/2021.
//

import SwiftUI

struct LocationTitle: View {
    var locationName : String
    
    var body: some View {
        Text(locationName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(.top, 10)
    }
}

struct LocationTitle_Previews: PreviewProvider {
    static var previews: some View {
        LocationTitle(locationName: "Birmingham, UK")
    }
}
