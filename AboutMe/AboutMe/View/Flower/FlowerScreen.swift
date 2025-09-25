
//
//  FlowersScreen.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/18/25.
//

import SwiftUI

struct FlowerScreen: View {
    
    let flower = FlowerArray()
    
    var body: some View {
        ScrollView {
            FlowerVScroll(imageArray: flower.flowers)
        }
        .padding([.leading, .trailing])
        .background {
            Image(.aboutMeBackground)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        }
        .navigationTitle("Flowers")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarColorScheme(.light)
        .monospaced()
        
    }
}
