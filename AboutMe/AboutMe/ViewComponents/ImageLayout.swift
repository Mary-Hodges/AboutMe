//
//  ImageLayout.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/18/25.
//

import SwiftUI

struct ImageLayout: View {
    var body: some View {
        ZStack {
            Image(.myCats)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Title")
                .font(.title)
                
        }
        .foregroundStyle(Color.red)
        
    }
}

#Preview {
    ImageLayout()
}
