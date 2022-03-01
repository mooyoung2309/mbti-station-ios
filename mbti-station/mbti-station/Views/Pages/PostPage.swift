//
//  PostPage.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import SwiftUI

struct PostPage: View {
    @EnvironmentObject var modelData: ModelData
    @State var selection: String = "최신 순"
    @State var selectedPostType: String = "전체 게시판"
    
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
                PostTypeButtonScrollView()
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

struct PostTypeButtonScrollView: View {
    @State var selection = "전체"
    @State var postImages: [Image] = [
        Image(systemName: "a.circle.fill"),
        Image(systemName: "moon.circle.fill"),
        Image(systemName: "archivebox.circle.fill"),
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                VStack {
                    postImages[0]
                        .imageScale(.large)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                    Text("전체")
                }
                VStack {
                    postImages[1]
                        .imageScale(.large)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                    Text("질문")
                }
                VStack {
                    postImages[2]
                        .imageScale(.large)
                        .foregroundColor(.black)
                        .font(.largeTitle)
                    Text("투표")
                }
            }
        }
    }
}

struct PostPage_Previews: PreviewProvider {
    static var previews: some View {
        PostPage().environmentObject(ModelData())
    }
}
