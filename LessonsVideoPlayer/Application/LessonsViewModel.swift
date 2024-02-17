//
//  LessonsViewModel.swift
//  LessonsVideoPlayer
//
//  Created by Alin Khatri on 24/01/2024.
//

import Foundation

class LessonsViewModel: ObservableObject {
    @Published var lessons: [Lessons] = []

    func fetchLessons() {
        NetworkManager.shared.getLessons { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let lessons):
                    self.lessons = lessons
                case .failure(let error):
                    // Handle error, you might want to display an error message
                    print("Error fetching lessons: \(error)")
                }
            }
        }
    }
}
