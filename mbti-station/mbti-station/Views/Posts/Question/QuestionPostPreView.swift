//
//  QuestionPostPreView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct QuestionPostPreView: View {
    var navigationTitle: String
    var questions: [Question]
    var limit: Int
    
    var body: some View {
        let _questionPosts = questions.prefix(limit)
        
        VStack(alignment: .leading,spacing: 5) {
            HStack {
                Text(navigationTitle)
                    .font(.title2)
                    .bold()
                Spacer()
                NavigationLink {
                    QuestionPostView(questions: questions)
                        .navigationTitle(navigationTitle)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    Text("모두 보기")
                        .font(.title3)
                        .foregroundColor(.blue)
                }
            }
            ForEach(0..<_questionPosts.count) {
                i in VStack {
                    QuestionRow(question: _questionPosts[i])
                    if(i != _questionPosts.count - 1) {
                        Divider()
                    }
                }
            }
        }
    }
}

struct QuestionPostPreView_Previews: PreviewProvider {
    static var questionPosts = ModelData().questions
    static var previews: some View {
        QuestionPostPreView(navigationTitle: "투표 게시판", questions: questionPosts, limit: 3)
    }
}
