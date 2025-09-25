//
//  FlowersVScroll.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/25/25.
//

import SwiftUI

struct FlowerVScroll: View {
    
    let imageArray: [Flower]
    
    var body: some View {
        Section() {
            ForEach(imageArray) { flower in
                ImageWithDescription(
                    picture: flower.image,
                    description: flower.name
                )
            }
        }
    }
}

#Preview {
    NavigationStack {
        FlowerScreen()
    }
}
