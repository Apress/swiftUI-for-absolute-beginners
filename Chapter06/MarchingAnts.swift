//
//  MarchingAnts.swift
//  Chapter06
//
//  Created by Jayant Varma on 19/12/19.
//  Copyright © 2019 Jayant Varma. All rights reserved.
//

import SwiftUI

struct MarchingAnts: View {
    
    @State private var startAnimation = false
    
    var body: some View {
        Rectangle()
            .stroke(Color.red, style: StrokeStyle(
                lineWidth: 2,
                lineCap: .butt,
                lineJoin: .round,
                dash: [10, 10],
                dashPhase: startAnimation ? 0 : 40
            ))
            .frame(width: 300, height: 300)
            .animation(
                .linear(duration: 1.0)
                .repeatForever(autoreverses: false),
                value: startAnimation)
            .onAppear {
                self.startAnimation.toggle()
            }
    }
}

#Preview {
    MarchingAnts()
}
