//
//  BackgroundStyle.swift
//  ViewModifierDemo
//
//  Created by OreChou on 2022/4/16.
//

import SwiftUI

struct BackgroundStyle: ViewModifier {
    
    var bgColor: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: UIScreen.main.bounds.width * 0.3)
            .foregroundColor(Color.black)
            .padding()
            .background(bgColor)
            .cornerRadius(CGFloat(20))
            
    }
}

extension View {
    func backgroundStyle(color: Color) -> some View {
        self.modifier(BackgroundStyle(bgColor: color))
    }
}
