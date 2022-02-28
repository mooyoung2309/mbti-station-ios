//
//  HomePage.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/24.
//

import SwiftUI

struct HomePage: View {
    @EnvironmentObject var modelData: ModelData

    var questionPosts: [QuestionPost] {
        modelData.questionPosts
    }
    
    var votePosts: [VotePost] {
        modelData.votePosts
    }

    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
//                PostCardScrollView(navigationTitle: "모여봐요 ✏️",posts: editorPosts)
//                    .padding(.bottom, 20)
                QuestionPostPreView(navigationTitle: "질문 게시판", questionPosts: questionPosts, limit: 3)
                    .padding(.bottom, 20)
                VotePostPreView(navigationTitle: "투표 게시판", votePosts: votePosts, limit: 3)
            }
            .padding(.horizontal, 20)
            .navigationTitle("홈")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage().environmentObject(ModelData())
    }
}
