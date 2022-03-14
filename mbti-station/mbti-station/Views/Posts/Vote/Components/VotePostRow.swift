//
//  VotePostRow.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/26.
//

import SwiftUI

struct VotePostRow: View {
    var vote: Vote
    
    var body: some View {
        NavigationLink {
            VotePostDetailView(vote: vote)
                .navigationTitle("투표")
                .navigationBarTitleDisplayMode(.inline)
        } label: {
            VStack(alignment: .leading, spacing: 10) {
                PostRowHeader(post: vote.post)
                VStack(spacing: 5) {
                    ForEach(vote.options.indices, id: \.self) {
                        i in
                            PostRowOption(id: i + 1, name: vote.options[i].name)
                    }
                }
                PostRowBottom(post: vote.post)
            }
        }
        
    }
}

struct VotePostRow_Previews: PreviewProvider {
    static var vote = ModelData().votes[0]
    static var previews: some View {
        VotePostRow(vote: vote)
    }
}
