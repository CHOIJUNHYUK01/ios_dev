//
//  Navigation.swift
//  WrmUp
//
//  Created by CHOIJUNHYUK on 2023/10/15.
//

import SwiftUI

struct Navigation: View {
    
    let titles = ["1", "2", "3"]
    let desc = ["4", "5", "6"]
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationStack {
            
            List {
                ForEach([0, 1, 2], id: \.self) { index in
                    NavigationLink {
                        Text(desc[index])
                    } label: {
                        Text(titles[index])
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        showModal = true
                    } label: {
                        Text("HI")
                    }
                }
            }
            .sheet(isPresented: $showModal, content: {
                Text("아이템 추가 페이지임")
            })
            .navigationTitle("네비게이션")
        }
    }
}

#Preview {
    Navigation()
}
