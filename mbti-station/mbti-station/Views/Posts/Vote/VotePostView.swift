//
//  VotePostView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct VotePostView: View {
    var votes: [Vote]
    
    var body: some View {
        ScrollView {
            ForEach(0..<votes.count) {
                i in VStack {
                    VotePostRow(vote: votes[i])
                    if(i != votes.count - 1) {
                        Divider()
                    }
                }
            }
        }.padding(.horizontal, 20)
    }
}

struct VotePostView_Previews: PreviewProvider {
    static var votes = ModelData().votes
    static var previews: some View {
        VotePostView(votes: votes)
    }
}
