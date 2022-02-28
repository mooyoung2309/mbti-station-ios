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
        VStack(alignment: .leading, spacing: 0) {
            HStack(spacing: 5) {
                Text(post.user.mbti)
                    .font(.headline)
                    .bold()
                Text(post.user.name)
                    .font(.headline)
                Text("3시간 전")
                    .font(.subheadline)
            }
            .padding(.bottom, 3)
            Text(post.info.title)
                .font(.title)
                .bold()
                .padding(.bottom, 5)
            Text(post.info.context)
                .font(.body)
                .padding(.bottom, 10)
            HStack(spacing: 10) {
                HStack(spacing: 3) {
                    Image(systemName: "heart")
                        .imageScale(.medium)
                    Text("58")
                }
                HStack(spacing: 3) {
                    Image(systemName: "bubble.left")
                        .imageScale(.medium)
                    Text("58")
                }
            }
        }
    }
    
}

struct PostDetail_Previews: PreviewProvider {
    static var posts = ModelData().posts
    static var previews: some View {
        PostDetail(post: posts[0])
    }
}
