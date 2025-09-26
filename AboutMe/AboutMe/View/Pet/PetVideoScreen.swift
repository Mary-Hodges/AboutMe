//
//  PetVideoScreen.swift
//  AboutMe
//
//  Created by Mary Hodges on 9/26/25.
//

//import SwiftUI
//import AVKit
//
//struct PetVideoScreen: View {
//
//    
//    let videos = ["ShikBigHops", "ShikBigHops"]
//    
//    var body: some View {
//        ScrollView {
//            LazyVStack {
//                ForEach(videos, id: \.self) { videoUrl in
//                    VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: videoUrl, withExtension: "mp4")!))
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    PetVideoScreen()
//}

import SwiftUI
import AVKit

struct PetVideoScreen: View {
    
    let videos: [Video] = [
        Video(fileName: "ShikBigHops", fileExtension: "mp4"),
        Video(fileName: "ShikBigHops", fileExtension: "mp4"),
        Video(fileName: "ShikBigHops", fileExtension: "mp4"),
        Video(fileName: "ShikBigHops", fileExtension: "mp4"),
        Video(fileName: "ShikBigHops", fileExtension: "mp4"),
        Video(fileName: "ShikBigHops", fileExtension: "mp4")
    ]
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(videos) { video in
                    if let url = Bundle.main.url(forResource: video.fileName, withExtension: video.fileExtension) {
                        VideoPlayer(player: AVPlayer(url: url))
                            .containerRelativeFrame(.vertical, count: 1, spacing: 0)
                            .scrollTargetLayout()
                    } else {
                        Text("Failed to load video")
                            .frame(height: 400)
                            .background(Color.red)
                    }
                }
            }
        }
        .ignoresSafeArea()
        .scrollTargetBehavior(.paging)
        .background {
            Image(.aboutMeBackground)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
        }
    }
}
#Preview {
    NavigationStack {
        PetVideoScreen()
    }
}
