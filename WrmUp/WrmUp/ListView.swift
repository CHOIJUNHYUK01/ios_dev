//
//  ListView.swift
//  WrmUp
//
//  Created by CHOIJUNHYUK on 2023/10/14.
//

import SwiftUI

struct Fruit: Hashable {
    let name: String
    let matchFruitName: String
    let price: Int
}

struct ListView: View {
    
    @State var favoriteFruits = [
        Fruit(name: "Apple", matchFruitName: "Banana", price: 1000),
        Fruit(name: "Banana", matchFruitName: "Banana", price: 8000),
        Fruit(name: "Cherry", matchFruitName: "Kiwi", price: 2000),
        Fruit(name: "Kiwi", matchFruitName: "DoubleBerry", price: 3000),
        Fruit(name: "DoubleBerry", matchFruitName: "Apple", price: 5000),
    ]
    
    @State var fruitName: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack {
                    TextField("Insert Fruit Name", text: $fruitName)
                    Button {
                        favoriteFruits.append(Fruit(name: fruitName, matchFruitName: favoriteFruits[Int.random(in: 0...favoriteFruits.count)].name, price: 1000 * Int.random(in: 1...10)))
                    } label: {
                        Text("Insert")
                            .padding()
                            .background(.blue)
                            .foregroundStyle(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding()
                
                List {
                    ForEach(favoriteFruits, id: \.self) { fruit in
                        VStack(alignment: .leading) {
                            Text("Name : \(fruit.name)")
                            Text("Match Fruit Name : \(fruit.matchFruitName)")
                            Text("Price: \(fruit.price)")
                        }
                    }.onDelete(perform: { indexSet in
                        favoriteFruits.remove(atOffsets: indexSet)
                    })
                }
                .navigationTitle("Fruit List")
            }
        }
    }
}

#Preview {
    ListView()
}
