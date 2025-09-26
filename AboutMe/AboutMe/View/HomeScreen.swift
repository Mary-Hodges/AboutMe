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
            HeaderOutline(title: "Mary Hodges")
            
            Spacer()
        
            HStack {
                VStack(spacing: 15) {
                    NavigationLink {
                        PetScreen()
                    } label: {
                        ImageHomeScreen(picture: .myCats, title: "My Cats")
                    }
                    
                    NavigationLink {
                        DiceScreen()
                    } label: {
                        ImageHomeScreen(picture: .myCats, title: "My Dice")
                    }
                }
                
                Spacer()
                
                VStack(spacing: 15) {
                    NavigationLink {
                        AnimeScreen()
                    } label: {
                        ImageHomeScreen(picture: .myCats, title: "Favorite Anime")
                    }
                    
                    NavigationLink {
                        FlowerScreen()
                    } label: {
                        ImageHomeScreen(picture: .myCats, title: "Favorite Flowers")
                    }
                    
                    NavigationLink {
                        VideogameScreen()
                    } label: {
                        ImageHomeScreen(picture: .myCats, title: "Favorite Videogames")
                    }
                }
            }
            Spacer()
        }
        .padding([.leading, .trailing])
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
