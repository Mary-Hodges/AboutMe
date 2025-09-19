//
//  ImageLayout.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/18/25.
//

import SwiftUI

struct ImageLayout: View {
    
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
                    colors:[.black, .clear], startPoint: .bottom, endPoint: .top)
            )
            
            Text(title)
                .font(.title2)
                .padding(5)
        }
        .foregroundStyle(Color.brown)
        .clipShape(
            RoundedRectangle(cornerRadius: 10)
        )
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.brown, lineWidth: 2))
//        .shadow(radius: 1)
        
    }
}

#Preview {
    ImageLayout(picture: "MyCats", title: "Title")
}
