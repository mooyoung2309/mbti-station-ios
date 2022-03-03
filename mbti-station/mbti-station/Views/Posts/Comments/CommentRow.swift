//
//  CommentRow.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct CommentRow: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("ENFP")
                    .font(.headline)
                Text("익명")
                    .font(.headline)
                Text("3시간 전")
                    .font(.subheadline)
                Spacer()
            }
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 5, trailing: 10))
            Text("테스트 댓글 입니다. 테스트 댓글입니다. 테스트 댓글 입니다. 테스트 댓글입니다.")
                .padding(.horizontal, 10)
            HStack(spacing: 3) {
                Image(systemName: "heart")
                    .imageScale(.medium)
                Text("58")
            }
            .padding(10)
        }
    }
}

struct CommentRow_Previews: PreviewProvider {
    static var previews: some View {
        CommentRow()
    }
}
