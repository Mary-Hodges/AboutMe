//
//  HeaderOutline.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/22/25.
//

import SwiftUI

struct HeaderOutline: View {
    
    let title: String
    
    var body: some View {
        ZStack {
//            Rectangle()
//                .fill(.brown)
//                .frame(maxWidth: .infinity, maxHeight: 20)
            LinearGradient(
                colors:[.brown, .clear],
                startPoint: .leading,
                endPoint: UnitPoint(x: 0.5, y: 10.0)
            )
            .frame(maxWidth: .infinity, maxHeight: 20)
            
            Text(title)
                .font(CustomFont.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
        }
    }
}
