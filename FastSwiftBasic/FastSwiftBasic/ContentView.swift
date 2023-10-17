//
//  ContentView.swift
//  FastSwiftBasic
//
//  Created by CHOIJUNHYUK on 2023/10/08.
//

import SwiftUI

struct ContentView: View {
    
    @State var silverrainLove: Int = 4
    
    func plusLove(doLove input: Int) -> Int {
        return input + 5
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Love Amount : \(silverrainLove)")
            
            Button {
                silverrainLove = plusLove(doLove: silverrainLove)
            } label: {
                Text("Love")
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
