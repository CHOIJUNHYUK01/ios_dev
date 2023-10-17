//
//  Detail.swift
//  WrmUp
//
//  Created by CHOIJUNHYUK on 2023/10/15.
//

import SwiftUI

struct Detail: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Text("모달 페이지임")
            Button(action: {
                isPresented = false
            }, label: {
                Text("닫기")
            })
        }
    }
}

#Preview {
    Detail(isPresented: .constant(true))
}
