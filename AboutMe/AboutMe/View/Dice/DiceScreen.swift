//
//  DiceScreen.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/18/25.
//

import SwiftUI

struct DiceScreen: View {
    
    let dice = DiceArrays()
    
    var body: some View {
        ScrollView {
            
            DiceHScroll( imageArray: dice.red, title: "      Red      ")
            
            DiceHScroll( imageArray: dice.orange, title: "      Orange      ")
            
            DiceHScroll( imageArray: dice.yellow, title: "      Yellow      ")
            
            DiceHScroll( imageArray: dice.green, title: "      Green      ")
            
            DiceHScroll( imageArray: dice.blue, title: "      Blue      ")
            
            DiceHScroll( imageArray: dice.purple, title: "      Purple      ")
            
            DiceHScroll( imageArray: dice.pink, title: "      Pink      ")
            
            DiceHScroll( imageArray: dice.black, title: "      Black      ")
            
            DiceHScroll( imageArray: dice.white, title: "      White      ")
            
            DiceHScroll( imageArray: dice.metal, title: "      Metal      ")
            
        }
        .background {
            Image(.aboutMeBackground)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        }
        .navigationTitle("My Dice")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.light)
        .monospaced()
    }
}

#Preview {
    NavigationStack {
        DiceScreen()
    }
}
