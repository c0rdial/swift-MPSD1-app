//
//  ThermometherPlaceholderView.swift
//  0132601_Group1_MPSD_Assignment_Protoype
//
//  Created by Wan Adam on 21/11/2022.
//

import SwiftUI

struct ThermometherPlaceHolderView: View {
    
    private let placeholderSize: CGFloat = 244
    
    var body: some View {
        Circle()
            .fill(LinearGradient([Color("Placeholder 1"), Color("Placeholder 2")]))
            .frame(width: placeholderSize, height: placeholderSize)
            .shadow(color: Color("Placeholder Drop Shadow"), radius:30, x:0, y: 15) // Drop shadow
            .overlay{
                //MARK: Placehoder border
                Circle()
                    .stroke(LinearGradient([.black.opacity(0.36), .white.opacity(0.11)]), lineWidth: 0.8)
            }
            .overlay{
                //MARK: Placeholder Inner Shadow
                Circle()
                    .stroke(Color("Placeholder Inner Shadow"), lineWidth: 2)
                    .blur(radius: 7)
                    .offset(x: 0, y: 3)
                    .mask{
                        Circle()
                            .fill(LinearGradient([.black, .clear], startPoint: .top, endPoint: .bottom))
                    }
            }
    }
}

struct ThermometherPlaceHolderView_Previews: PreviewProvider {
    static var previews: some View {
        ThermometherPlaceHolderView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Background"))
            .ignoresSafeArea()
    }
}
