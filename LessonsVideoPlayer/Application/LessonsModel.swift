//
//  LessonsModel.swift
//  LessonsVideoPlayer
//
//  Created by Alin Khatri on 24/01/2024.
//

import Foundation

struct LessonsModel: Decodable {
    let lessons: [Lessons]
}

struct Lessons: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let thumbnail: String
    let video_url: String
}

struct LessonsMockData {
    static let data = [
        Lessons(id: 1, name: "The Key To Success In iPhone Photography", description: "The Key To Success In iPhone Photography The Key To Success In iPhone Photography The Key To Success In iPhone Photography The Key To Success In iPhone Photography The Key To Success In iPhone Photography", thumbnail: "https://embed-ssl.wistia.com/deliveries/b57817b5b05c3e3129b7071eee83ecb7.jpg?image_crop_resized=1000x560", video_url: "https://embed-ssl.wistia.com/deliveries/cc8402e8c16cc8f36d3f63bd29eb82f99f4b5f88/accudvh5jy.mp4"),
        Lessons(id: 2, name: "The Key To Success In iPhone Photography", description: "The Key To Success In iPhone Photography The Key To Success In iPhone Photography The Key To Success In iPhone Photography The Key To Success In iPhone Photography The Key To Success In iPhone Photography", thumbnail: "https://embed-ssl.wistia.com/deliveries/b57817b5b05c3e3129b7071eee83ecb7.jpg?image_crop_resized=1000x560", video_url: "https://embed-ssl.wistia.com/deliveries/cc8402e8c16cc8f36d3f63bd29eb82f99f4b5f88/accudvh5jy.mp4"),
        Lessons(id: 3, name: "The Key To Success In iPhone Photography", description: "The Key To Success In iPhone Photography The Key To Success In iPhone Photography The Key To Success In iPhone Photography The Key To Success In iPhone Photography The Key To Success In iPhone Photography", thumbnail: "https://embed-ssl.wistia.com/deliveries/b57817b5b05c3e3129b7071eee83ecb7.jpg?image_crop_resized=1000x560", video_url: "https://embed-ssl.wistia.com/deliveries/cc8402e8c16cc8f36d3f63bd29eb82f99f4b5f88/accudvh5jy.mp4"),
        Lessons(id: 4, name: "The Key To Success In iPhone Photography", description: "The Key To Success In iPhone Photography The Key To Success In iPhone Photography The Key To Success In iPhone Photography The Key To Success In iPhone Photography The Key To Success In iPhone Photography", thumbnail: "https://embed-ssl.wistia.com/deliveries/b57817b5b05c3e3129b7071eee83ecb7.jpg?image_crop_resized=1000x560", video_url: "https://embed-ssl.wistia.com/deliveries/cc8402e8c16cc8f36d3f63bd29eb82f99f4b5f88/accudvh5jy.mp4")
    ]
}
