//
//  MyApp.swift
//  WrmUp
//
//  Created by CHOIJUNHYUK on 2023/10/15.
//

import SwiftUI

struct MyApp: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        TabView {
            FirstList()
                .tabItem {
                    Label("first", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("두 번째 페이지")
                .tabItem {
                    Label("first", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("세 번째 페이지")
                .tabItem {
                    Label("first", systemImage: "tray.and.arrow.down.fill")
                }
            
            Text("네 번째 페이지")
                .tabItem {
                    Label("first", systemImage: "tray.and.arrow.down.fill")
                }
        }
        .sheet(isPresented: $showModal, content: {
            TabView {
                OnboardingSample(onboardingTitle: "온보딩1", backgroundColor: .blue, showModal: $showModal)
                OnboardingSample(onboardingTitle: "온보딩2", backgroundColor: .green, showModal: $showModal)
                OnboardingSample(onboardingTitle: "온보딩3", backgroundColor: .gray, showModal: $showModal)
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
        })
        .onAppear {
            showModal = true
        }
    }
}

#Preview {
    MyApp()
}
