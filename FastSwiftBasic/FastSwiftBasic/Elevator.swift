//
//  Elevator.swift
//  FastSwiftBasic
//
//  Created by CHOIJUNHYUK on 2023/10/09.
//

import SwiftUI

struct Elevator: View {
    
    @State var myElevator = ElevatorStruct()
    
    var body: some View {
        VStack {
            Text("층수 : \(myElevator.level)")
            
            HStack {
                Button {
                    myElevator.goDown()
                } label: {
                    Text("아래로")
                }
                
                Button {
                    myElevator.goUp()
                } label: {
                    Text("위로")
                }
            }
        }
    }
}

struct ElevatorStruct {
    var level: Int = 1;
    
    mutating func goDown() {
        level -= 1;
    }
    
    mutating func goUp() {
        level += 1;
    }
}

#Preview {
    Elevator()
}
