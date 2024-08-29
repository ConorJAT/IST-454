//
//  ContentView.swift
//  week-1-demo
//
//  Created by Conor Race (RIT Student) on 8/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
        
        WebView(url: "https://www.rit.edu") // View
            .edgesIgnoringSafeArea(.all) // Modifier
    }
}

#Preview {
    ContentView()
}
