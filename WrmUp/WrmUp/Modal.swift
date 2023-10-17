//
//  Modal.swift
//  WrmUp
//
//  Created by CHOIJUNHYUK on 2023/10/15.
//

import SwiftUI

struct Modal: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack {
            Text("메인 페이지 입니다")
            Button(action: {
                showModal = true
            }, label: {
                Text("Modal 화면 전환")
            })
        }
        .sheet(isPresented: $showModal, content: {
            Detail(isPresented: $showModal)
        })
    }
}

#Preview {
    Modal()
}
