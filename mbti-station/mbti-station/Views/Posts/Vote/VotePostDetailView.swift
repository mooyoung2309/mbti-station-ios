//
//  VotePostDetailView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct VotePostDetailView: View {
    var vote: Vote
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                PostDetail(post: vote.post)
                VoteOptionView(options: vote.options)
                HStack {
                    Spacer()
                    VoteResultChart(voteResults: vote.options[0].results)
                    Spacer()
                }
                PostDetailReact(info: vote.post.info)
                CommentList()
            }
        }
    }
}

struct VotePostDetailView_Previews: PreviewProvider {
    static var vote = ModelData().votes[0]
    static var previews: some View {
        VotePostDetailView(vote: vote)
    }
}
