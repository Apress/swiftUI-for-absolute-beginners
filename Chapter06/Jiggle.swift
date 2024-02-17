//
//  Jiggle.swift
//  Chapter06
//
//  Created by Jayant Varma on 19/12/19.
//  Copyright © 2019 Jayant Varma. All rights reserved.
//

import SwiftUI

struct Jiggle: View {
    
        @State private var jiggle = false
        
        var body: some View {
            Text("Hello World!")
                .scaleEffect(jiggle ? 1.0 : 0.3)
                .animation(
                    .spring()
                    .repeatForever(autoreverses: true),
                    value: jiggle)
            .   onAppear(){
                    self.jiggle.toggle()
            }
        }
    }

#Preview {
    Jiggle()
}
