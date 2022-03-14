//
//  VotePostView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct VotePostView: View {
    var votePosts: [VotePost]
    
    var body: some View {
        ScrollView {
            ForEach(0..<votePosts.count) {
                i in VStack {
                    VotePostRow(votePost: votePosts[i])
                    if(i != votePosts.count - 1) {
                        Divider()
                    }
                }
            }
        }.padding(.horizontal, 20)
    }
}

struct VotePostView_Previews: PreviewProvider {
    static var votePosts = ModelData().votePosts
    static var previews: some View {
        VotePostView(votePosts: votePosts)
    }
}
