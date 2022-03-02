//
//  CreatePostRule.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/02.
//

import SwiftUI

struct CreatePostRule: View {
    var body: some View {
        HStack() {
            VStack(alignment: .leading,spacing: 10) {
                Text("엠비티아이 정거장은 누구나 기분 좋게 참여할 수 있는 커뮤니티를 만들기 위해 커뮤니티 이용규칙을 제정하여 운영하고 있습니다. 위반 시 게시물이 삭제되고 서비스 이용이 일정 기간 제한 될 수 있습니다.")
                    .font(.caption)
                    .foregroundColor(Color.init(UIColor.darkGray))
            }
            Spacer()
        }
        .padding(10)
    }
}

struct CreatePostRule_Previews: PreviewProvider {
    static var previews: some View {
        CreatePostRule()
    }
}
