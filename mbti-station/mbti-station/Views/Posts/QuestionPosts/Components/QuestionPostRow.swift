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
        NavigationLink {
            QuestionPostDetailView(questionPost: questionPost)
                .navigationTitle("질문")
                .navigationBarTitleDisplayMode(.inline)
        } label: {
            PostRow(post: questionPost.post)
        }
    }
}

struct QuestionPostRow_Previews: PreviewProvider {
    static var questionPosts = ModelData().questionPosts
    static var previews: some View {
        QuestionPostRow(questionPost: questionPosts[0])
    }
}
