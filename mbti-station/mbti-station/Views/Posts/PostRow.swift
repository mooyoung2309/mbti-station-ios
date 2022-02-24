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
                Text(post.title)
                    .lineLimit(1)
                    .font(.title3)
                Text(post.context)
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .lineLimit(1)
                    .font(.body)
                HStack(alignment: .center, spacing: 5) {
                    Text(post.mbti + " " + post.name)
                        .foregroundColor(Color.init(UIColor.darkGray))
                        .font(.caption)
                    Text("5분전")
                        .foregroundColor(Color.init(UIColor.darkGray))
                        .font(.caption)
                    Spacer()
                    HStack(alignment: .center,spacing: 2) {
                        Image(systemName: "heart")
                            .foregroundColor(Color.init(UIColor.darkGray))
                            .imageScale(.small)
                        Text(String(post.likeCount))
                            .foregroundColor(Color.init(UIColor.darkGray))
                            .font(.caption)
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "bubble.left")
                            .foregroundColor(Color.init(UIColor.darkGray))
                            .imageScale(.small)
                        Text(String(post.commentCount))
                            .foregroundColor(Color.init(UIColor.darkGray))
                            .font(.caption)
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
