//
//  QuestionPostDetail.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/28.
//

import SwiftUI

struct QuestionPostDetail: View {
    var quetionPost: QuestionPost
    
    var body: some View {
        VStack(alignment: .leading) {
            PostDetail(post: quetionPost.post)
            PostDetailReact(info: quetionPost.post.info)
        }
    }
}

struct QuestionPostDetail_Previews: PreviewProvider {
    static var quetionPosts = ModelData().questionPosts
    static var previews: some View {
        QuestionPostDetail(quetionPost: quetionPosts[0])
    }
}
