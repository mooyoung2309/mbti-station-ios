//
//  PostRow.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct PostRow: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("질문")
                    .font(.caption)
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .padding(5)
                    .background(Color.init(UIColor.systemGray5))
                    .cornerRadius(5)
            }
            .padding(.horizontal, 10)
            Text(post.info.context)
                .foregroundColor(.black)
                .lineLimit(2)
                .font(.title3)
                .padding(10)
            HStack(alignment: .center, spacing: 5) {
                Text(post.user.mbti + " " + post.user.name)
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .font(.caption)
                Spacer()
                Text("5분전")
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .font(.caption)
            }
            .padding(10)
            Divider()
            HStack {
                HStack(spacing: 2) {
                    Image(systemName: "heart")
                        .foregroundColor(.black)
                        .imageScale(.medium)
                    Text("공감 " + String(post.info.likeCount))
                        .foregroundColor(.black)
                        .font(.body)
                }
                HStack(spacing: 2) {
                    Image(systemName: "bubble.left")
                        .foregroundColor(.black)
                        .imageScale(.medium)
                    Text("댓글 " + String(post.info.commentCount))
                        .foregroundColor(.black)
                        .font(.body)
                }
            }
            .padding(10)
        }
    }
}

struct PostRow_Previews: PreviewProvider {
    static var posts = ModelData().posts
    static var previews: some View {
        PostRow(post: posts[0])
    }
}
