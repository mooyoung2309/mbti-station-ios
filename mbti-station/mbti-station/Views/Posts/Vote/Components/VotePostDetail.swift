//
//  VotePostDetail.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/26.
//

import SwiftUI

struct VotePostDetail: View {
    var vote: Vote
    
    var body: some View {
        VStack {
            
            Divider()
            CommentList()
        }   
    }
}

//struct Option: View {
//    var option: VoteOption
//
//    var body: some View {
//        Button(action: {
//
//        }) {
//            HStack {
//                Text(option.name)
//                    .font(.title3)
//                    .foregroundColor(.black)
//                Spacer()
//            }
//            .padding(5)
//            .border(.gray)
//        }
//
//    }
//}

struct VotePostDetail_Previews: PreviewProvider {
    static var vote = ModelData().votes[0]
    static var previews: some View {
        VotePostDetail(vote: vote)
    }
}
