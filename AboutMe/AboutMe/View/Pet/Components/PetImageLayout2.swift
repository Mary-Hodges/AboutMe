//
//  PetImageLayout2.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/26/25.
//

import SwiftUI

struct PetImageLayout2: View {
    
    let picture1: ImageResource
    let picture2: ImageResource
    let picture3: ImageResource
    
    var body: some View {
        HStack {
            Image(picture3)
                .resizable()
                .dynamicTypeSize(.accessibility1)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(.brown, lineWidth: 2))
            
            VStack {
                Image(picture1)
                    .resizable()
                    .dynamicTypeSize(.accessibility1)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(.brown, lineWidth: 2))
                
                Image(picture2)
                    .resizable()
                    .dynamicTypeSize(.accessibility1)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(.brown, lineWidth: 2))
            }
        }
    }
}

#Preview {
    PetImageLayout2(picture1: .myCats, picture2: .myCats, picture3: .myCats)
}
