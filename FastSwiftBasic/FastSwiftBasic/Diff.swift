//
//  Diff.swift
//  FastSwiftBasic
//
//  Created by CHOIJUNHYUK on 2023/10/09.
//

import SwiftUI

struct Diff: View {
    
    let myCar = Car(name: "리어카", owner: "나")
    @ObservedObject var myKar = Kar(name: "리어카2", owner: "나2")
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Text("\(myKar.name)의 주인은 \(myKar.owner)입니다")
            
            TextField("은비는 누구꺼?", text: $name)
            
            Button {
                var broCar = myKar
                broCar.name = "은비"
                
                myKar.sayHi()
            } label: {
                Text("출발")
            }
        }
    }
}

struct Car {
    let name: String
    let owner: String
    
    func sayHi() {
        print("ㅇㅁㄴㅇ")
    }
}

class Kar: ObservableObject {
    @Published var name: String
    let owner: String
    
    func sayHi() {
        print("ㅇㅁㄴㅇ")
    }
    
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
}

#Preview {
    Diff()
}
