//
//  Extensions.swift
//  0132601_Group1_MPSD_Assignment_Protoype
//
//  Created by Wan Adam on 21/11/2022.
//

import SwiftUI

extension LinearGradient{
    
    init(_ colors: [Color], startPoint: UnitPoint = .topLeading, endPoint: UnitPoint = .bottomTrailing) {
        self.init(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint)
    }
    
}
