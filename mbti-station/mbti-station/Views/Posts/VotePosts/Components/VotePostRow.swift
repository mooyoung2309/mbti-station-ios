//
//  VotePostRow.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/26.
//

import SwiftUI

struct VotePostRow: View {
    var votePost: VotePost
    
    var body: some View {
        NavigationLink {
            VotePostDetailView(votePost: votePost)
                .navigationTitle("투표")
                .navigationBarTitleDisplayMode(.inline)
        } label: {
            VStack(alignment: .leading, spacing: 1) {
                Text(votePost.title)
                    .lineLimit(1)
                    .font(.title3)
                    .foregroundColor(.black)
                
                HStack(alignment: .center, spacing: 5) {
                    Text(votePost.post.user.mbti + " " + votePost.post.user.name)
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
                        Text(String(votePost.post.info.likeCount))
                            .foregroundColor(Color.init(UIColor.darkGray))
                            .font(.caption)
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "bubble.left")
                            .foregroundColor(Color.init(UIColor.darkGray))
                            .imageScale(.small)
                        Text(String(votePost.post.info.commentCount))
                            .foregroundColor(Color.init(UIColor.darkGray))
                            .font(.caption)
                    }
                }
            }
        }
        
    }
}
struct VotePostRow_Previews: PreviewProvider {
    static var votePosts = ModelData().votePosts
    static var previews: some View {
        VotePostRow(votePost: votePosts[0])
    }
}
