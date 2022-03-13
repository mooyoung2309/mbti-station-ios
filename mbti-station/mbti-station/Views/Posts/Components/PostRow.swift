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
            PostRowHeader(post: post)
            PostRowBottom(post: post)
        }
    }
}

struct PostRowHeader: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text(post.type.name)
                    .font(.caption)
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .padding(5)
                    .background(Color.init(UIColor.systemGray5))
                    .cornerRadius(5)
            }
            .padding(.horizontal, 10)
            HStack {
                Text(post.info.context)
                    .foregroundColor(.black)
                    .lineLimit(2)
                    .font(.body)
                Spacer()
            }
            .padding(.horizontal, 10)
        }
    }
}

struct PostRowBottom: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .center, spacing: 5) {
                Text(post.user.mbti + " " + post.user.name)
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .font(.caption)
                Spacer()
                Text("5분전")
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .font(.caption)
            }
            .padding(.horizontal, 10)
            Divider()
            HStack {
                Text("좋아요 " + String(post.info.likeCount))
                    .font(.subheadline)
                    .foregroundColor(.black)
                Text("댓글 " + String(post.info.commentCount))
                    .font(.subheadline)
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 10)
        }
    }
}

struct PostRow_Previews: PreviewProvider {
    static var posts = ModelData().posts
    static var previews: some View {
        PostRow(post: posts[0])
    }
}
