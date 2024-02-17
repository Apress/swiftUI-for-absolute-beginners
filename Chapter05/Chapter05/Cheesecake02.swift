//
//  Thumbnail02.swift
//  Chapter05
//
//  Created by Jayant Varma on 17/12/19.
//  Copyright © 2019 Jayant Varma. All rights reserved.
//

import SwiftUI

struct ThumbnailBasicView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Just Desserts")
                .font(.largeTitle)
                .padding()

            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<5) { index in
                        Thumbnail()
                    }
                }.padding()
            }
        }
    }
}

#Preview {
    ThumbnailBasicView()
}
