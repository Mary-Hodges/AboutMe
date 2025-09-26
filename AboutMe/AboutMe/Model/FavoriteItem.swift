//
//  Anime.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/22/25.
//

import Foundation
import DeveloperToolsSupport

struct FavoriteItem: Identifiable {
    let id = UUID()
    let name: String
    let image: ImageResource
}
