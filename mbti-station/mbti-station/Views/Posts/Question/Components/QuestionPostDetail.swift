//
//  QuestionPostDetail.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct QuestionPostDetail: View {
    var question: Question
    
    var body: some View {
        VStack(alignment: .leading) {
            PostDetail(post: question.post)
            PostDetailReact(info: question.post.info)
        }
    }
}

struct QuestionPostDetail_Previews: PreviewProvider {
    static var quetion = ModelData().questions[0]
    static var previews: some View {
        QuestionPostDetail(question: quetion)
    }
}
