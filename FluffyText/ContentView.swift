//
//  ContentView.swift
//  FluffyText
//
//  Created by admin on 03.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValue: CGFloat = 0.0
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text("Марафон")
                    Text("по SwiftUI")
                }
                Text("\u{00AB}Отцовский пинок\u{00BB}")
            }
//            .padding()
            .frame(width: sliderValue)
            .border(.purple, width: 2)
            Slider(
                value: $sliderValue,
                in: 100...300,
                label: { Image(systemName: "paperplane.fill") },
                minimumValueLabel: { Text("100") },
                maximumValueLabel: { Text("300") }
            )
            .padding()
            .border(.cyan, width: 2)
        }
    }
}

#Preview {
    ContentView()
}
