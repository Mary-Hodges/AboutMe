//
//  ImageWithDescription.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/22/25.
//

import SwiftUI

struct ImageWithDescription: View {
    var picture: ImageResource
    var description: String
    
    var body: some View {
        HStack {
            Image(picture)
                .resizable()
                .frame(width: 75, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(.brown, lineWidth: 2))
            Spacer()
            Text(description)
                .font(.system(.body, design: .serif, weight: .light))
                .padding(5)
        }
        .padding([.leading, .trailing], 50)
        .padding([.top, .bottom], 5)
        .background(.clear)
        .glassEffect(.regular.tint(.lightPink.opacity(0.5)))
    }
}

#Preview {
    ImageWithDescription(picture: .myCats, description: "Long String")
}
