//
//  Setting.swift
//  WrmUp
//
//  Created by CHOIJUNHYUK on 2023/10/14.
//

import SwiftUI

struct SettingInfo: Hashable {
    let title: String
    let systemName: String
    let backgroundColor: Color
    let foregroundColor: Color = .white
}

struct Setting: View {
    
    let data: [[SettingInfo]] = [
        [
            SettingInfo(title: "스크린 타임", systemName: "hourglass", backgroundColor: .purple),
        ],
        [
            SettingInfo(title: "일반", systemName: "gear", backgroundColor: .gray),
            SettingInfo(title: "손쉬운 사용", systemName: "person.crop.circle", backgroundColor: .blue),
            SettingInfo(title: "개인정보 보호 및 안전", systemName: "hourglass", backgroundColor: .blue),
        ],
        [
            SettingInfo(title: "암호", systemName: "hourglass", backgroundColor: .gray),
        ]
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(data, id: \.self) { section in
                    Section {
                        ForEach(section, id: \.self) { item in
                            Label {
                                Text(item.title)
                            } icon: {
                                Image(systemName: item.systemName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 20, height: 20)
                                    .padding(.all, 7)
                                    .background(item.backgroundColor)
                                    .foregroundStyle(item.foregroundColor)
                                    .clipShape(RoundedRectangle(cornerRadius: 6))
                            }
                        }
                    }
                }
            }
            .navigationTitle("설정")
        }
    }
}

#Preview {
    Setting()
}
