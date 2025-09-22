//
//  CustomFont.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/22/25.
//

import SwiftUI

// Always try to set up custom fonts this way
enum CustomFont {
    
    static var largeTitle = apple(size: 30, relativeTo: .largeTitle)
    static var title2 = amatic(size: 20, relativeTo: .title2)
    
    
    static func amatic(size: CGFloat, relativeTo style: Font.TextStyle) -> Font {
        Font.custom("Amatic SC", size: size, relativeTo: style)
    }
    
    static func apple(size: CGFloat, relativeTo style: Font.TextStyle) -> Font {
        Font.custom("Homemade Apple", size: size, relativeTo: style)
    }
    
    static func annie(size: CGFloat, relativeTo style: Font.TextStyle) -> Font {
        Font.custom("Annie Use Your Telescope", size: size, relativeTo: style)
    }
}
