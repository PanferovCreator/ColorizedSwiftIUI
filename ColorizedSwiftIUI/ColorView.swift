//
//  ColorView.swift
//  ColorizedSwiftIUI
//
//  Created by Dmitriy Panferov on 12/06/23.
//

import SwiftUI

struct ColorView: View {
    var color: Color
    
    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .frame(height: 200)
            .cornerRadius(25)
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .padding()
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .red)
    }
}
