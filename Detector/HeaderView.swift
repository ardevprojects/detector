//
//  HeaderView.swift
//  Detector
//
//  Created by A A on 04/04/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Button(action: {
                // Handle Main button action
            }) {
                HStack {
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color("AccentColor"))
                    Text("Main")
                        .foregroundColor(Color("AccentColor"))
                        .fontWeight(.semibold)
                }
                .padding()
            }
            
            Text("Magnetic Detection")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .padding()
            
            Spacer()
        }
    }
}

#Preview {
    HeaderView()
}
