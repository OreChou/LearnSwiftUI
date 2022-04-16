//
//  BlueCircle.swift
//  ViewModifierDemo
//
//  Created by OreChou on 2022/4/16.
//

import SwiftUI

struct BlueCircle<Content: View>: View {
    
    let content: Content
    
    // Useing @ViewBuilder to reduce duplicate code.
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        HStack {
            content
            Spacer()
            Circle()
                .fill(Color.blue)
                .frame(width: 20, height: 30)
        }.padding()
    }
}
