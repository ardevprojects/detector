//
//  GaugeWithArrowView.swift
//  Detector
//
//  Created by A A on 04/04/2024.
//

import SwiftUI

struct GaugeWithArrowView: View {
    var value: Int
    
    @State private var animatedValue: Int = 0
    
    var body: some View {
        ZStack {
            Image("gauge")
            
            Image("arrow")
                .rotationEffect(Angle(degrees: Double(animatedValue) * 1.8), anchor: UnitPoint(x: 0.85, y: 0.5))
                .onAppear {
                    animatedValue = value
                }
                .onChange(of: value) {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0)) {
                        animatedValue = value
                    }
                }
                .alignmentGuide(HorizontalAlignment.center) { _ in
                    return 86
                }
                .alignmentGuide(VerticalAlignment.center) { _ in
                    return -66
                }
        }
        .padding(.top, 200)
    }
}
