//
//  ContentView.swift
//  Detector
//
//  Created by A A on 03/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonText = "Search"
    @State private var checkingText = "Search checking"
    @State private var randomValue = 0
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                HeaderView()
                
                Spacer()
                
                GaugeWithArrowView(value: randomValue)
                
                Text(checkingText)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .padding(30)
                
                Spacer()
                
                SearchButtonView(buttonText: $buttonText, checkingText: $checkingText, randomValue: $randomValue)
                
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
