//
//  AnimeScreen.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/18/25.
//

import  SwiftUI

struct AnimeScreen: View {
    
    let anime = AnimeArrays()
    
    var body: some View {
        ScrollView {
            ItemVScroll(imageArray: anime.action, title: "      Action      ")
            
            ItemVScroll(imageArray: anime.romance, title: "      Romance      ")
        }
        .padding([.leading, .trailing])
        .background {
            Image(.aboutMeBackground)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        }
        .navigationTitle("Favorite Anime")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.light)
        .monospaced()
    }
}

#Preview {
    NavigationStack {
        AnimeScreen()
    }
}
