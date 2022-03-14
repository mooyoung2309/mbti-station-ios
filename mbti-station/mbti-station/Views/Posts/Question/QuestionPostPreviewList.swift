//
//  QuestionPostList.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import SwiftUI

struct QuestionPostPreviewList: View {
    var navigationTitle: String
    var questionPosts: [QuestionPost]
    
    var body: some View {
        let _questionPosts = questionPosts.prefix(3)
        
        VStack(alignment: .leading,spacing: 5) {
            HStack {
                Text(navigationTitle)
                    .font(.title2)
                    .bold()
                Spacer()
                NavigationLink {
                    QuestionPostList(questionPosts: questionPosts)
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
                    QuestionPostRow(questionPost: _questionPosts[i])
                    if(i != _questionPosts.count - 1) {
                        Divider()
                    }
                }
            }
        }
    }
}

struct QuestionPostPreviewList_Previews: PreviewProvider {
    static var questionPosts = ModelData().questionPosts
    
    static var previews: some View {
        QuestionPostPreviewList(navigationTitle: "질문 게시판", questionPosts: questionPosts)
    }
}
