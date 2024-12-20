//
//  ContentView.swift
//  tf-hk
//
//  Created by Hudson Ruger on 12/19/24.
//

import SwiftUI

struct ContentView: View {
    @State var gameState = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
