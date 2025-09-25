//
//  DiceSectionOutline.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/24/25.
//

import SwiftUI

struct DiceHScroll: View {
    
    let imageArray: [Dice]
    let title: String
    
    var body: some View {
        Section(
            header: Text(title)
                .background(Color.brown)
                .containerShape(RoundedRectangle(cornerRadius: 5))
                .font(.system(.title2, design: .serif, weight: .light))
                .monospaced()
        ) {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(imageArray) { dice in
                        Image(dice.image)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .aspectRatio(contentMode: .fill)
                            .clipShape(
                                RoundedRectangle(cornerRadius: 100)
                            )
                            .overlay(RoundedRectangle(cornerRadius: 100).stroke(.brown, lineWidth: 2))
                            .glassEffect()
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    NavigationStack {
        DiceScreen()
    }
}
