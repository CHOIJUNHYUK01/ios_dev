//
//  ContentView.swift
//  I AM RICH
//
//  Created by CHOIJUNHYUK on 2023/08/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .ignoresSafeArea(edges: .all)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world")
                    .font(.body)
                Text("나는 짱이야")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .fontDesign(.serif)
            }
        }
    }
}

#Preview {
    ContentView()
}
