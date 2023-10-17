//
//  FirstList.swift
//  WrmUp
//
//  Created by CHOIJUNHYUK on 2023/10/15.
//

import SwiftUI

struct FirstList: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    Text("하위 페이지")
                } label: {
                    Text("First")
                }
                
                NavigationLink {
                    Text("하위 페이지")
                } label: {
                    Text("Sec")
                }
                
                NavigationLink {
                    Text("하위 페이지")
                } label: {
                    Text("Third")
                }
            }
            .navigationTitle("리스트")
        }
    }
}

#Preview {
    FirstList()
}
