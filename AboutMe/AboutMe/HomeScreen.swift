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
            Text("Mary Hodges")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding() // Maybe take the out. Need to see how it looks with pictures.
            
            Spacer()
        
            HStack {
                VStack(spacing: 15) {
                    NavigationLink("Pets") {
                        PetScreen()
                    }
                    
                    NavigationLink("Dice") {
                        DiceScreen()
                    }
                }
                
                Spacer()
                
                VStack(spacing: 15) {
                    NavigationLink("Anime") {
                        AnimeScreen()
                    }
                    
                    NavigationLink("Flowers") {
                        FlowersScreen()
                    }
                    
                    NavigationLink("Videogames") {
                        VideogamesScreen()
                    }
                }
            }
            .padding() // Maybe take the out. Need to see how it looks with pictures.
            Spacer()
        }
        .padding()
    }
}

#Preview {
    NavigationStack {
        HomeScreen()
    }
}
