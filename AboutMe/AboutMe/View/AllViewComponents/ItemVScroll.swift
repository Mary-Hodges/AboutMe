//
//  ImageVScroll.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/25/25.
//

import SwiftUI

struct ItemVScroll: View {
    
    let imageArray: [FavoriteItem]
    let title: String
    
    var body: some View {
        Section(
            header: Text(title)
                .background(Color.brown.opacity(0.90))
                .containerShape(RoundedRectangle(cornerRadius: 5))
                .font(.system(.title2, design: .serif, weight: .medium))
                .monospaced()
                .padding()
        ) {
            ForEach(imageArray) { anime in
                ImageWithDescription(
                    picture: anime.image,
                    description: anime.name
                )
            }
        }
    }
}

#Preview {
    NavigationStack {
        AnimeScreen()
    }
}
