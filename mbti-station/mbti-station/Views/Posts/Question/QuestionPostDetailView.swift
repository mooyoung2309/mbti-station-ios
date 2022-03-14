//
//  QuestionPostDetailView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct QuestionPostDetailView: View {
    var question: Question
    
    var body: some View {
        ScrollView {
            VStack {
                QuestionPostDetail(question: question)
                CommentList()
            }
        }
    }
}

struct QuestionPostDetailView_Previews: PreviewProvider {
    static var quetionPosts = ModelData().questions
    static var previews: some View {
        QuestionPostDetailView(question: quetionPosts[0])
    }
}
