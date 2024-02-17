//
//  ContentView.swift
//  LessonsVideoPlayer
//
//  Created by Alin Khatri on 24/01/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent
import AVKit

struct VideoPlayerView: View {
    var videoURL: URL
    @State var player = AVPlayer(url: URL(string: "https://embed-ssl.wistia.com/deliveries/cc8402e8c16cc8f36d3f63bd29eb82f99f4b5f88/accudvh5jy.mp4")!)
    
    var body: some View {
        ZStack {
            VideoPlayer(player: AVPlayer(url: videoURL))
        }
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("", displayMode: .inline)
        
    }
}

