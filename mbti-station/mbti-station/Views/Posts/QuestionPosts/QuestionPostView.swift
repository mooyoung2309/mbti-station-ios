//
//  QuestionPostView.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct QuestionPostView: View {
    var questionPosts: [QuestionPost]
    
    var body: some View {
        ScrollView {
            ForEach(0..<questionPosts.count) {
                i in VStack {
                    QuestionPostRow(questionPost:  questionPosts[i])
                    if(i != questionPosts.count - 1) {
                        Divider()
                    }
                }
            }
        }.padding(.horizontal, 20)
    }
}

struct QuestionPostView_Previews: PreviewProvider {
    static var questionPosts = ModelData().questionPosts
    static var previews: some View {
        QuestionPostView(questionPosts: questionPosts)
    }
}
