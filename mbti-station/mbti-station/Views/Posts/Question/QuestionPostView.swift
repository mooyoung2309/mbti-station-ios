//
//  QuestionPostView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct QuestionPostView: View {
    var questions: [Question]
    
    var body: some View {
        ScrollView {
            ForEach(0..<questions.count) {
                i in VStack {
                    QuestionRow(question:  questions[i])
                    if(i != questions.count - 1) {
                        Divider()
                    }
                }
            }
        }.padding(.horizontal, 20)
    }
}

struct QuestionPostView_Previews: PreviewProvider {
    static var questionPosts = ModelData().questions
    static var previews: some View {
        QuestionPostView(questions: questionPosts)
    }
}
