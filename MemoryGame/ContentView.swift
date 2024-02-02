//
//  ContentView.swift
//  MemoryGame
//
//  Created by Supakrit Nithikethkul on 2/2/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .strokeBorder(lineWidth: 2)
            .foregroundColor(.orange)
            .padding()
        Text("🎃")
    }
}

#Preview {
    ContentView()
}
