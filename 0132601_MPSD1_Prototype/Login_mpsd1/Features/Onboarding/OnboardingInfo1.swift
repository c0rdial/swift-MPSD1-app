//
//  OnboardingInfo1.swift
//  Login_mpsd1
//
//  Created by Wan Adam on 20/11/2022.
//

import SwiftUI

struct OnboardingInfo1: View {
    
    let item: OnboardingItem
    
    var body: some View {
        VStack(spacing: 0) {
            
            Text(item.emoji)
                .font(.system(size: 150))
            
            Text(item.title)
                .font(.system(size: 35,
                              weight: .heavy,
                              design: .rounded))
                .padding(.bottom, 12)
            
            Text(item.content)
                .font(.system(size: 18,
                              weight: .light,
                              design: .rounded))
            
        }
        .multilineTextAlignment(.center)
        .foregroundColor(.white)
        .padding()
    }
}

struct OnboardingInfo1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingInfo1(item: .init(emoji: "✈️",
                                       title: "Join the crew",
                                       content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."))
            .previewLayout(.sizeThatFits)
            .background(.blue)
    }
}
