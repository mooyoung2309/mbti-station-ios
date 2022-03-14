//
//  VotePostPreView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct VotePostPreView: View {
    var navigationTitle: String
    var votes: [Vote]
    var limit: Int
    
    var body: some View {
        let _votes = votes.prefix(limit)
        
        VStack(alignment: .leading,spacing: 5) {
            HStack {
                Text(navigationTitle)
                    .font(.title2)
                    .bold()
                Spacer()
                NavigationLink {
                    VotePostView(votes: votes)
                        .navigationTitle(navigationTitle)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    Text("모두 보기")
                        .font(.title3)
                        .foregroundColor(.blue)
                }
            }
            ForEach(0..<_votes.count) {
                i in VStack {
                    VotePostRow(vote: votes[i])
                    if(i != _votes.count - 1) {
                        Divider()
                    }
                }
            }
        }
    }
}

struct VotePostPreView_Previews: PreviewProvider {
    static var votes = ModelData().votes
    static var previews: some View {
        VotePostPreView(navigationTitle: "투표", votes: votes, limit: 3)
    }
}
