//
//  Choice.swift
//  FastSwiftBasic
//
//  Created by CHOIJUNHYUK on 2023/10/09.
//

import SwiftUI

struct Choice: View {
    
    var direction: Direction = .east
    
    var body: some View {
        switch direction {
        case .north:
            Text(direction.rawValue)
        case .west:
            Text(direction.rawValue)
        case .east:
            Text(direction.rawValue)
        case .south:
            Text(direction.rawValue)
        }
    }
}

enum Direction: String {
    case north = "북"
    case west = "서"
    case east = "동"
    case south = "남"
}

#Preview {
    Choice()
}
