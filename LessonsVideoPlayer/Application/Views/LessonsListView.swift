//
//  LessonsListView.swift
//  LessonsVideoPlayer
//
//  Created by Alin Khatri on 24/01/2024.
//

import SwiftUI

struct LessonsListView: View {
    @ObservedObject var viewModel = LessonsViewModel()
    @State private var selectedVideo: Lessons?
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(), count: 4), spacing: 15) {
                    ForEach(viewModel.lessons) { lesson in
                        NavigationLink(destination: VideoPlayerView(videoURL: URL(string: lesson.video_url)!)) {
                            VideoGridItem(lesson: lesson)
                        }
                        .buttonStyle(.plain)
                        .hoverEffectDisabled()
                    }
                    
                }
                .padding()
            }
            .navigationTitle("Video List")
            .onAppear {
                viewModel.fetchLessons()
            }
        }
        .navigationViewStyle(.stack)
    }}

struct VideoGridItem: View {
    var lesson: Lessons
    
    var body: some View {
        VStack{
            AsyncImage(url: URL(string: lesson.thumbnail)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                // Placeholder image or activity indicator
                Image(systemName: "photo.fill")
                    .resizable()
                    .scaledToFill()
            }
            
            VStack(alignment: .leading) {
                Text(lesson.name)
                    .font(.headline)
                    .padding(.top, 4)
                
                Text(lesson.description)
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .lineLimit(2)
                    .padding(.top, 2)
            }
            .padding(10)
        }
        .frame(maxWidth: 300)
        .background(.thinMaterial)
        .cornerRadius(10)
        .padding()
    }
}

#Preview {
    LessonsListView()
}
