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
            VStack(alignment: .leading, spacing: 10) {
                PostRowHeader(post: votePost.post)
                VStack(spacing: 5) {
                    ForEach(votePost.options.indices, id: \.self) {
                        i in
                            PostRowOption(id: i + 1, name: votePost.options[i].name)
                    }
                }
                PostRowBottom(post: votePost.post)
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
