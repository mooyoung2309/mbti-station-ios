//
//  PostDetail.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct PostDetail: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            PostDetailHeader(post: post)
        }
    }
    
}

struct PostDetailHeader: View {
    var post: Post
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text(post.type.name)
                    .font(.caption)
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .padding(5)
                    .background(Color.init(UIColor.systemGray5))
                    .cornerRadius(5)
            }
            .padding(.bottom, 5)
            
            Text(post.user.mbti + " " + post.user.name)
                .font(.headline)
                .padding(.bottom, 3)
            
            Text("5분전")
                .foregroundColor(Color.init(UIColor.darkGray))
                .font(.caption)
                .padding(.bottom, 10)
            
            HStack {
                Text(post.info.context)
                    .foregroundColor(.black)
                    .lineLimit(2)
                    .font(.body)
                Spacer()
            }
        }
        .padding(.horizontal, 10)
    }
}

struct PostDetailReact: View {
    var info: PostInfo
    
    var body: some View {
        Divider()
            .padding(.vertical, 10)
        
        HStack(spacing: 10) {
            HStack(spacing: 2) {
                Image(systemName: "heart")
                    .foregroundColor(.black)
                    .imageScale(.medium)
                Text("공감 " + String(info.likeCount))
                    .foregroundColor(.black)
                    .font(.body)
            }
            HStack(spacing: 2) {
                Image(systemName: "bubble.left")
                    .foregroundColor(.black)
                    .imageScale(.medium)
                Text("댓글 " + String(info.commentCount))
                    .foregroundColor(.black)
                    .font(.body)
            }
        }
        .padding(.horizontal, 10)
        
        Divider()
            .padding(.vertical, 10)
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var posts = ModelData().posts
    static var previews: some View {
        PostDetail(post: posts[0])
    }
}
