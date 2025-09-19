//
//  HomeScreen.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/17/25.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(.brown)
                    .frame(maxWidth: .infinity, maxHeight: 20)
                    
                // I want a custom font
                Text("Mary Hodges")
                    .font(.largeTitle)
                    .bold() // I might not want this....
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
            }
            Spacer()
        
            HStack {
                VStack(spacing: 15) {
                    NavigationLink {
                        PetScreen()
                    } label: {
                        ImageLayout(
                            picture: "MyCats",
                            title: "My Cats"
                        )
                    }
                    
                    NavigationLink {
                        DiceScreen()
                    } label: {
                        ImageLayout(
                            picture: "MyCats",
                            title: "My Dice"
                        )
                    }
                }
                
                Spacer()
                
                VStack(spacing: 15) {
                    NavigationLink {
                        AnimeScreen()
                    } label: {
                        ImageLayout(
                            picture: "MyCats",
                            title: "Favorite Anime"
                        )
                    }
                    
                    NavigationLink {
                        FlowersScreen()
                    } label: {
                        ImageLayout(
                            picture: "MyCats",
                            title: "Favorite Flowers"
                        )
                    }
                    
                    NavigationLink {
                        VideogamesScreen()
                    } label: {
                        ImageLayout(
                            picture: "MyCats",
                            title: "Favorite Videogames"
                        )
                    }
                }
            }
            Spacer()
        }
        .padding()
        .background {
            Image(.aboutMeBackground)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    NavigationStack {
        HomeScreen()
    }
}
