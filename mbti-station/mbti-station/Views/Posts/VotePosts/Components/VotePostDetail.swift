//
//  VotePostDetail.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/26.
//

import SwiftUI

struct VotePostDetail: View {
    var votePost: VotePost
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                PostDetail(post: votePost.post)
                ForEach(0..<votePost.options.count) {
                    i in Option(option: votePost.options[i])
                }
            }
            .padding([.horizontal, .bottom], 20)
            VoteResultChart(voteResults: votePost.options[0].results)
            Divider()
            CommentList()
        }   
    }
}

struct Option: View {
    var option: VoteOption
    
    var body: some View {
        Button(action: {
            
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
}

struct VotePostDetail_Previews: PreviewProvider {
    static var votePosts = ModelData().votePosts
    static var previews: some View {
        VotePostDetail(votePost: votePosts[0])
    }
}
