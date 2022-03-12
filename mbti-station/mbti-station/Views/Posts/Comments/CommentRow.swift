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
                HStack {
                    Text("ENFP")
                        .font(.headline)
                    Text("익명")
                        .font(.headline)
                    Spacer()
                }
                .frame(height:20)
                
                Text("3시간 전")
                    .font(.subheadline)
                    .frame(height: 15)
                    .padding(.bottom, 5)
                
                Text("테스트 댓글 입니다. 테스트 댓글입니다. 테스트 댓글 입니다. 테스트 댓글입니다.")
                    .padding(.bottom, 5)
                
                HStack(spacing: 3) {
                    Image(systemName: "heart")
                        .imageScale(.medium)
                    Text("58")
                }
            }
        }
        .padding(.horizontal, 10)
    }
}

struct CommentRow_Previews: PreviewProvider {
    static var previews: some View {
        CommentRow()
    }
}
