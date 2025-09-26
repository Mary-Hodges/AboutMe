//
//  PetHeader.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/26/25.
//

import SwiftUI

struct PetHeader: View {
    
    let name: String
    let description: String
    
    var body: some View {
        VStack {
            Text(name)
                .background(Color.brown.opacity(0.90))
                .containerShape(RoundedRectangle(cornerRadius: 5))
                .font(.system(.title2, design: .serif, weight: .medium))
                .monospaced()
                .padding()
            
            Text(description)
                .font(.footnote)
                .padding()
                .background(.clear)
                .glassEffect(.regular.tint(.lightPink.opacity(0.5)))
        }
    }
}

#Preview {
    PetScreen()
}
