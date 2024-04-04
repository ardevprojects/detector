//
//  SearchButtonView.swift
//  Detector
//
//  Created by A A on 04/04/2024.
//

import SwiftUI

struct SearchButtonView: View {
    @Binding var buttonText: String
    @Binding var checkingText: String
    @Binding var randomValue: Int
    
    var body: some View {
        Button(action: {
            if buttonText == "Search" {
                randomValue = Int.random(in: 0...100)
                buttonText = "Stop"
                checkingText = "\(randomValue) µT"
            } else {
                buttonText = "Search"
                checkingText = "Search checking"
            }
        }) {
            Text(buttonText)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
        }
        .frame(width: 350, height: 50)
        .background(Color("AccentColor"))
        .cornerRadius(32)

        .padding(.bottom)
    }
}
