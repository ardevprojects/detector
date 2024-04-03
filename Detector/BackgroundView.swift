//
//  BackgroundView.swift
//  Detector
//
//  Created by A A on 04/04/2024.
//

import SwiftUI

struct BackgroundView: View {
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            VStack {
                ZStack {
                    Image("background")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? 390 : nil,
                               height: UIDevice.current.userInterfaceIdiom == .pad ? 329 : nil)
                    Image("magnet")
                        .padding(.top, 90)
                }
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

#Preview {
    BackgroundView()
}
