//
//  OnboardingManager.swift
//  Login_mpsd1
//
//  Created by Wan Adam on 20/11/2022.
//

import Foundation

struct OnboardingItem: Identifiable {
    let id = UUID()
    let emoji: String
    let title: String
    let content: String
}

extension OnboardingItem: Equatable {}

final class OnboardingManager: ObservableObject {
    
    @Published private(set) var items: [OnboardingItem] = []
    
    func load() {
        items = [
            .init(emoji: "✈️",
                  title: "Join the crew",
                  content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
            .init(emoji: "🏡",
                  title: "Easier Booking",
                  content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
            .init(emoji: "🏔",
                  title: "Explore the beauty of the city",
                  content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
        ]
    }
}
