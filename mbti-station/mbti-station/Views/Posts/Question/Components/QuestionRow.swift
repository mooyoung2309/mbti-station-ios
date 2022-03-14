//
//  QuestionPostRow.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import SwiftUI

struct QuestionRow: View {
    var question: Question
    
    var body: some View {
        NavigationLink {
            QuestionPostDetailView(question: question)
                .navigationTitle("질문")
                .navigationBarTitleDisplayMode(.inline)
        } label: {
            VStack(spacing: 10) {
                PostRowHeader(post: question.post)
                PostRowBottom(post: question.post)
            }
        }
    }
}

struct QuestionRow_Previews: PreviewProvider {
    static var question = ModelData().questions[0]
    static var previews: some View {
        QuestionRow(question: question)
    }
}
