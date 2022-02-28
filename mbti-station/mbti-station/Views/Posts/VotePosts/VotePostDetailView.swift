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
            VotePostDetail(votePost: votePost)
        }
    }
}

struct VotePostDetailView_Previews: PreviewProvider {
    static var votePosts = ModelData().votePosts
    static var previews: some View {
        VotePostDetailView(votePost: votePosts[0])
    }
}
