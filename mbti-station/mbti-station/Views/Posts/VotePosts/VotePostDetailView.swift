//
//  VotePostDetailView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct VotePostDetailView: View {
    var votePost: VotePost
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                PostDetail(post: votePost.post)
                VoteOptionView(options: votePost.options)
                HStack {
                    Spacer()
                    VoteResultChart(voteResults: votePost.options[0].results)
                    Spacer()
                }
                PostDetailReact(info: votePost.post.info)
                CommentList()
            }
        }
    }
}

struct VotePostDetailView_Previews: PreviewProvider {
    static var votePosts = ModelData().votePosts
    static var previews: some View {
        VotePostDetailView(votePost: votePosts[0])
    }
}
