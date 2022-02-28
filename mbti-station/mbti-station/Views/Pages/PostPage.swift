//
//  PostPage.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import SwiftUI

struct PostPage: View {
    @EnvironmentObject var modelData: ModelData
    @State private var selection = "최신 순"
    let sortOptions = ["최신 순", "좋아요 순", "댓글 순"]
    
    var postOptions: [PostOption] {
        modelData.postOptions
    }
    
    var questionPosts: [QuestionPost] {
        modelData.questionPosts
    }
    
    var votePosts: [VotePost] {
        modelData.votePosts
    }
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                PostOptionButtonScrollView(postOptions: postOptions)
                Divider()
                LazyVStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Text("전체 게시판")
                        Spacer()
                        Picker("Select a paint color", selection: $selection) {
                            Button(action: {}) {
                                Label("최신 순", systemImage: "clock")
                            }
                            Button(action: {}) {
                                Label("좋아요 순", systemImage: "heart")
                            }
                            Button(action: {}) {
                                Label("댓글 순", systemImage: "bubble.left")
                            }
                        }
                    }
                    .pickerStyle(.menu)
                }
                VStack {
                    ForEach(0..<votePosts.count) {
                        i in VStack {
                            VotePostRow(votePost: votePosts[i])
                            
                                Divider()
                        }
                    }
                    
                    ForEach(0..<questionPosts.count) {
                        i in VStack {
                            QuestionPostRow(questionPost: questionPosts[i])
                            if(i != questionPosts.count - 1) {
                                Divider()
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 20)
            .navigationTitle("게시판")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct PostPage_Previews: PreviewProvider {
    static var previews: some View {
        PostPage().environmentObject(ModelData())
    }
}
