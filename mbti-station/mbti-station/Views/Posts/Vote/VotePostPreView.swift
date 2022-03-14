//
//  VotePostPreView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct VotePostPreView: View {
    var navigationTitle: String
    var votePosts: [VotePost]
    var limit: Int
    
    var body: some View {
        let _votePosts = votePosts.prefix(limit)
        
        VStack(alignment: .leading,spacing: 5) {
            HStack {
                Text(navigationTitle)
                    .font(.title2)
                    .bold()
                Spacer()
                NavigationLink {
                    VotePostView(votePosts: votePosts)
                        .navigationTitle(navigationTitle)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    Text("모두 보기")
                        .font(.title3)
                        .foregroundColor(.blue)
                }
            }
            ForEach(0..<_votePosts.count) {
                i in VStack {
                    VotePostRow(votePost: votePosts[i])
                    if(i != _votePosts.count - 1) {
                        Divider()
                    }
                }
            }
        }
    }
}

struct VotePostPreView_Previews: PreviewProvider {
    static var votePosts = ModelData().votePosts
    static var previews: some View {
        VotePostPreView(navigationTitle: "투표", votePosts: votePosts, limit: 3)
    }
}
