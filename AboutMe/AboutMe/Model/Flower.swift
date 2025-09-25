//
//  Flower.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/25/25.
//

import Foundation
import DeveloperToolsSupport

struct Flower: Identifiable {
    let id = UUID()
    let image: ImageResource
    let name: String
}
