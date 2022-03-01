//
//  QuestionPostDetailView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct QuestionPostDetailView: View {
    var questionPost: QuestionPost
    
    var body: some View {
        ScrollView {
            VStack {
                QuestionPostDetail(quetionPost: questionPost)
                    .padding(.horizontal, 20)
                Divider().padding(.horizontal, 20)
                CommentList()
            }
        }
    }
}

struct QuestionPostDetailView_Previews: PreviewProvider {
    static var quetionPosts = ModelData().questionPosts
    static var previews: some View {
        QuestionPostDetailView(questionPost: quetionPosts[0])
    }
}
