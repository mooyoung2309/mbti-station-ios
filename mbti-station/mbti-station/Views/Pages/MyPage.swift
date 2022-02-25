//
//  MyPage.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import SwiftUI

struct MyPage: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
            }
            .padding(.horizontal, 20)
            .navigationTitle("내정보")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MyPage_Previews: PreviewProvider {
    static var previews: some View {
        MyPage()
    }
}
