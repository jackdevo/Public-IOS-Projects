//
//  TitleCardSubView.swift
//  Hamster Care
//
//  Created by Jack Devonshire on 23/03/2021.
//

import SwiftUI

struct TitleCardSubView: View {
    var title : String
    
    var body: some View {
        Text(title)
            .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .background(BackgroundGradient())
        

    }
}

struct TitleCardSubView_Previews: PreviewProvider {
    static var previews: some View {
        TitleCardSubView(title: "Test")
    }
}
