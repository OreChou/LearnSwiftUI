//
//  MenuButtonView.swift
//  ButtonsDemo
//
//  Created by OreChou on 2022/4/13.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        Text("MenuButtons are currently available on MacOS currently")
            .padding()
            .navigationBarTitle("MenuButtons", displayMode: .inline)
    }
}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonView()
    }
}
