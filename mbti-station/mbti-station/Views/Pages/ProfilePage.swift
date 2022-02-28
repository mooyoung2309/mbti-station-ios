//
//  ProfilePage.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                Text("hello world!")
            }
            .padding(.horizontal, 20)
            .navigationTitle("내정보")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
