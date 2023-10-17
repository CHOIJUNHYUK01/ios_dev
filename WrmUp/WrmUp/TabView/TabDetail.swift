//
//  TabDetail.swift
//  WrmUp
//
//  Created by CHOIJUNHYUK on 2023/10/15.
//

import SwiftUI

struct TabDetail: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct TabDetail2: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("Detail2")
        }
    }
}

struct TabDetail3: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("Last")
        }
    }
}

#Preview {
    TabDetail()
}
