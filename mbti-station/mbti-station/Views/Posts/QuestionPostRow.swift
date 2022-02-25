//
//  QuestionPostRow.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import SwiftUI

struct QuestionPostRow: View {
    var questionPost: QuestionPost
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack(alignment: .leading, spacing: 1) {
                Text(questionPost.title)
                    .lineLimit(1)
                    .font(.title3)
                Text(questionPost.context)
                    .foregroundColor(Color.init(UIColor.darkGray))
                    .lineLimit(1)
                    .font(.body)
                HStack(alignment: .center, spacing: 5) {
                    Text(questionPost.post.user.mbti + " " + questionPost.post.user.name)
                        .foregroundColor(Color.init(UIColor.darkGray))
                        .font(.caption)
                    Text("5분전")
                        .foregroundColor(Color.init(UIColor.darkGray))
                        .font(.caption)
                    Spacer()
                    HStack(alignment: .center,spacing: 2) {
                        Image(systemName: "heart")
                            .foregroundColor(Color.init(UIColor.darkGray))
                            .imageScale(.small)
                        Text(String(questionPost.post.info.likeCount))
                            .foregroundColor(Color.init(UIColor.darkGray))
                            .font(.caption)
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "bubble.left")
                            .foregroundColor(Color.init(UIColor.darkGray))
                            .imageScale(.small)
                        Text(String(questionPost.post.info.commentCount))
                            .foregroundColor(Color.init(UIColor.darkGray))
                            .font(.caption)
                    }
                }
            }
        }
    }
}

struct QuestionPostRow_Previews: PreviewProvider {
    static var questionPosts = ModelData().questionPosts
    static var previews: some View {
        QuestionPostRow(questionPost: questionPosts[0])
    }
}
