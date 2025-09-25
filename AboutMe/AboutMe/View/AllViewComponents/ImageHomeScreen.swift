//
//  ImageHomeScreen.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/22/25.
//

import SwiftUI

struct ImageHomeScreen: View {
    
    var picture: String
    var title: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(picture)
                .resizable()
                .dynamicTypeSize(.accessibility1)
            
            Rectangle()
                .fill(.clear)
                .background(
                    // Find a differnet color to be the gradient. It looks too dark.
                    LinearGradient(
                        colors:[.black, .clear], startPoint: .bottom, endPoint: .top
                    )
                    .opacity(0.75)
                )
            
            Text(title)
                .font(.system(.title2, design: .serif, weight: .light))
                .padding(5)
                .monospaced()
        }
        .foregroundStyle(Color.brown)
        .clipShape(
            RoundedRectangle(cornerRadius: 10)
        )
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.brown, lineWidth: 2))
    }
}

#Preview {
    ImageHomeScreen(picture: "MyCats", title: "Title")
}
