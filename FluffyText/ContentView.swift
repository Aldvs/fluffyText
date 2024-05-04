//
//  ContentView.swift
//  FluffyText
//
//  Created by admin on 03.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValue: CGFloat = 300.0
    @State var animateGradient: Bool = false
    
    var body: some View {
        VStack {
            MultiStyledText()
                .animation(.bouncy, value: sliderValue)
                .frame(width: sliderValue, height: 200)
                .border(.red, width: 2)
            Slider(
                value: $sliderValue,
                in: 100...300
            )
            .tint(.gray)
            .padding()
        }
        .frame(height: 500)
    }
}

struct MultiStyledText: View {
    var body: some View {
        Text("Марафон ")
            .foregroundStyle(.secondary)
        +
        Text(" ")
        +
        Text("по SwiftUI")
            .fontWeight(.medium)
        +
        Text(" ")
        +
        Text("\u{00AB}Отцовский пинок\u{00BB}")
            .font(.title)
            .bold()
            .foregroundStyle(.tint)
    }
}

#Preview {
    ContentView()
}
