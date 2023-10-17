//
//  Onboarding1.swift
//  WrmUp
//
//  Created by CHOIJUNHYUK on 2023/10/15.
//

import SwiftUI

struct OnboardingSample: View {
    
    let onboardingTitle: String
    let backgroundColor: Color
    
    @Binding var showModal: Bool
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            if onboardingTitle != "온보딩3" {
                Text(onboardingTitle)
            } else {
                VStack {
                    Text(onboardingTitle)
                    Button {
                        showModal = false
                    } label: {
                        Text("Start")
                            .padding()
                    }
                    .foregroundStyle(.white)
                    .background(.black)
                }
            }
                
        }
    }
}

#Preview {
    OnboardingSample(onboardingTitle: "온보딩 테스트", backgroundColor: .green, showModal: .constant(true))
}
