//
//  ImageVScroll.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/25/25.
//

import SwiftUI

struct AnimeVScroll: View {
    
    let imageArray: [Anime]
    let title: String
    
    var body: some View {
        Section(
            header: Text(title)
                .background(Color.brown)
                .containerShape(RoundedRectangle(cornerRadius: 5))
                .font(.system(.title2, design: .serif, weight: .medium))
                .monospaced()
        ) {
            ForEach(imageArray) { anime in
                ImageWithDescription(
                    picture: anime.imageName,
                    description: anime.name
                )
            }
        }
        .glassEffect()
    }
}

#Preview {
    NavigationStack {
        AnimeScreen()
    }
}
