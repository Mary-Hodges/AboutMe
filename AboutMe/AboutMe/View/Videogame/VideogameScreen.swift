//
//  VideogamesScreen.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/18/25.
//

import SwiftUI

struct VideogameScreen: View {
    
    let videogame = VideogameArray()
    
    var body: some View {
        ScrollView {
            ItemVScroll(imageArray: videogame.videogame, title: "Genre")
        }
        .padding([.leading, .trailing])
        .background {
            Image(.aboutMeBackground)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        }
        .navigationTitle("Videogames")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.light)
        .monospaced()
    }
}
