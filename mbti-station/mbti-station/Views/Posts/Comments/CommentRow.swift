//
//  CommentRow.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct CommentRow: View {
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image(systemName: "person.crop.circle")
                .resizable()
                .foregroundColor(Color.init(UIColor.darkGray))
                .frame(width: 35, height: 35)
                
            VStack(alignment: .leading, spacing: 0) {
                HStack(spacing: 0) {
                    Text("ENFP 익명")
                        .bold()
                        .font(.headline)
                    Spacer()
                }
                .frame(height:20)
                
                Text("3시간 전")
                    .bold()
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .font(.caption)
                    .frame(height: 15)
                    .padding(.bottom, 5)
                
                Text("테스트 댓글 입니다. 테스트 댓글입니다. 테스트 댓글 입니다. 테스트 댓글입니다.")
                    .font(.body)
                    .padding(.bottom, 5)
                
                HStack(spacing: 5) {
                    HStack(spacing: 2) {
                        Text("좋아요")
                            .bold()
                            .font(.subheadline)
                        Text("58")
                            .bold()
                            .font(.subheadline)
                    }
                    HStack(spacing: 2) {
                        Text("답글쓰기")
                            .bold()
                            .font(.subheadline)
                    }
                }
            }
        }
    }
}

struct CommentRow_Previews: PreviewProvider {
    static var previews: some View {
        CommentRow()
    }
}
