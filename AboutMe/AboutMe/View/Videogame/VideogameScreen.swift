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
            ItemVScroll(imageArray: videogame.singlePlayer, title: "      Single Player      ")
            ItemVScroll(imageArray: videogame.multiplayer, title: "      Multiplayer      ")
        }
        .padding([.leading, .trailing])
        .background {
            Image(.aboutMeBackground)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        }
        .navigationTitle("Favorite Videogames")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.light)
        .monospaced()
    }
}

#Preview {
    VideogameScreen()
}
