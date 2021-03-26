//
//  BackgroundGradient.swift
//  Simple Weather App
//
//  Created by Jack Devonshire on 26/03/2021.
//

import SwiftUI

struct BackgroundGradient: View {
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("DarkBlue"), Color("LightBlue"), .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct BackgroundGradient_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradient()
    }
}
