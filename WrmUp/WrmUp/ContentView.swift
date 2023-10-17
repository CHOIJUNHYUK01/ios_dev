//
//  ContentView.swift
//  WrmUp
//
//  Created by CHOIJUNHYUK on 2023/10/14.
//

import SwiftUI

struct CustomButton: View {
    var buttonTitle: String
    var buttonColor: Color
    
    var body: some View {
        Button {
            //
        } label: {
            Text(buttonTitle)
                .padding()
                .background(buttonColor)
                .foregroundStyle(.white)
                .font(.headline)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .frame(width: 200, height: 200)
            Text("헤드라인 입니다")
                .font(.headline)
                .fontWeight(.bold)
                .padding()
            Text("서브헤드라인 입니다")
                .font(.subheadline)
                .padding()
            Text("바디 입니다")
                .font(.body)
                .padding()
            HStack {
                CustomButton(buttonTitle: "Button1", buttonColor: .blue)
                CustomButton(buttonTitle: "Button2", buttonColor: .green)
            }
            Button {
                //
            } label: {
                VStack {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50)
                    Text("Complex Button")
                }
                .padding()
            }
            .background(.orange)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10.0))
            .bold()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
