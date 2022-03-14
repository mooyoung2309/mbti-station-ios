//
//  VoteContent.swift
//  mbti-station
//
//  Created by 송영모 on 2022/03/02.
//

import SwiftUI

struct VoteContent: View {
    var vote: Vote
    
    var body: some View {
        VStack {
            ForEach(vote.options, id: \.self) {
                option in Button(action: {
                    
                }) {
                    HStack {
                        Text(option.name)
                            .font(.title3)
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(5)
                    .border(.gray)
                }
            }
            VoteResultChart(voteResults: vote.options[0].results)
        }
    }
}

struct VoteContent_Previews: PreviewProvider {
    static var vote = ModelData().votes[0]
    static var previews: some View {
        VoteContent(vote: vote)
    }
}
