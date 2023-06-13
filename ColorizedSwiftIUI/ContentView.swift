//
//  ContentView.swift
//  ColorizedSwiftIUI
//
//  Created by Dmitriy Panferov on 12/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    
    var body: some View {
        VStack {
            ColorView(color: Color(
                    red: redSliderValue / 255,
                    green: greenSliderValue / 255,
                    blue: blueSliderValue / 255
                )
            )
                      
            VStack {
                ColorSliderView(value: $redSliderValue, sliderColor: .red)
                ColorSliderView(value: $greenSliderValue, sliderColor: .green)
                ColorSliderView(value: $blueSliderValue, sliderColor: .blue)
            }
            
            Spacer()
        }
        .padding()
        .background(Color.cyan)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSliderView: View {
    @Binding var value: Double
    var sliderColor: Color

    var body: some View {
        HStack(spacing: 10) {
            Text("\(String(lround(value)))")
                .foregroundColor(.white)
                .frame(width: 40)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(sliderColor)
        }
    }
}

