//
//  Onboarding.swift
//  WrmUp
//
//  Created by CHOIJUNHYUK on 2023/10/14.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .font(.system(size: 33))
                .fontWeight(.heavy)
                .padding()
                .padding(.top, 80)
            
            VStack {
                HStack {
                    Image(systemName: "person.2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35)
                        .padding(.horizontal, 7)
                        .foregroundColor(Color.blue)
                    
                    VStack(alignment: .leading) {
                        Text("Shared Library")
                            .font(.headline)
                            .fontWeight(.heavy)
                        
                        Text("Combine Photos and videos with the people Combine Photos and videos with the people Combine Photos and videos with the people ")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                    }
                }
                .padding(.vertical)
                
                HStack {
                    Image(systemName: "doc.on.doc.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35)
                        .padding(.horizontal, 7)
                        .foregroundColor(Color.blue)
                    
                    VStack(alignment: .leading) {
                        Text("Copy & Paste")
                            .font(.headline)
                            .fontWeight(.heavy)
                        
                        Text("Combine Photos and videos with the people Combine Photos and videos with the people Combine Photos and videos with the people ")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                    }
                }
                .padding(.vertical)
                
                HStack {
                    Image(systemName: "person.2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35)
                        .padding(.horizontal, 7)
                        .foregroundColor(Color.blue)
                    
                    VStack(alignment: .leading) {
                        Text("Shared Library")
                            .font(.headline)
                            .fontWeight(.heavy)
                        
                        Text("Combine Photos and videos with the people Combine Photos and videos with the people Combine Photos and videos with the people ")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                    }
                }
                .padding(.vertical)
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Text("Continue")
                        .padding()
                        .frame(width: 350)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .bold()
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                .padding(.bottom, 60)
            }
        }
    }
}

#Preview {
    Onboarding()
}
