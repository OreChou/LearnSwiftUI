//
//  ContentView.swift
//  ViewModifierDemo
//
//  Created by OreChou on 2022/4/16.
//

import SwiftUI

struct ContentView: View {
    
    @State var wifi_on = false
    
    var body: some View {
        VStack {
            Text("Prefect1").modifier(BackgroundStyle(bgColor: .blue))
            Text("Prefect2").backgroundStyle(color: .red)
            BlueCircle {
                Text("Some text here")
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 40, height: 40)
            }
            BlueCircle {
                Text("Another example")
            }
            HStack {
                Image(systemName: "c")
                Image(systemName: "o")
                Image(systemName: "o")
                Image(systemName: "k")
            }.symbolVariant(.fill.circle)
                .foregroundStyle(.yellow, .blue)
                .font(.title)
            Toggle(isOn: $wifi_on) {
                Label("Wi-Fi", systemImage: "wifi")
            }.foregroundStyle(wifi_on ? .blue : .secondary)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
