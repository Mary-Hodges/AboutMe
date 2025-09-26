//
//  PetScreen.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/18/25.
//

import SwiftUI

struct PetScreen: View {
    var body: some View {
        VStack {
            PetHeader(name: "      Shikamaru      ", description: "A crazy hyper kitty that loves cuddles.")
            PetImageLayout1(picture1: .myCats, picture2: .myCats, picture3: .myCats)
            
            PetHeader(name: "      Yuki      ", description: "A super shy kitty that will jump at a sneeze.")
            PetImageLayout2(picture1: .myCats, picture2: .myCats, picture3: .myCats)
        }
        .padding([.leading, .trailing])
        .background {
            Image(.aboutMeBackground)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        }
        .navigationTitle("My Cats")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.light)
        .monospaced()
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink{
                    PetVideoScreen()
                } label: {
                    Label("Vidoes", systemImage: "video")
                        
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        PetScreen()
    }
}
