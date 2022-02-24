//
//  PostRow.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/24.
//

import SwiftUI

struct PostRow: View {
    var post: Post
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack(alignment: .leading, spacing: 1) {
                Text(post.title).font(.title2).lineLimit(1)
                Text(post.context).font(.body).lineLimit(1)
                HStack(alignment: .center, spacing: 5) {
                    Text(post.mbti + " " + post.name).font(.caption)
                    Text("5분전").font(.caption)
                    Spacer()
                    HStack(alignment: .center,spacing: 2) {
                        Image(systemName: "heart").imageScale(.small)
                        Text(String(post.likeCount)).font(.caption)
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "bubble.left").imageScale(.small)
                        Text(String(post.commentCount)).font(.caption)
                    }
                }
            }

        }
    }
}

struct PostRow_Previews: PreviewProvider {
    static var posts = ModelData().posts
    
    static var previews: some View {
        PostRow(post: posts[0])
    }
}
