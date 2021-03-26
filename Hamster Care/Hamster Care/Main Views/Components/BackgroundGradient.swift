//
//  BackgroundGradient.swift
//  Hamster Care
//
//  Created by Jack Devonshire on 23/03/2021.
//

import SwiftUI

struct BackgroundGradient: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color("Orange"), Color("OrangeRed")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct BackgroundGradient_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradient()
    }
}
