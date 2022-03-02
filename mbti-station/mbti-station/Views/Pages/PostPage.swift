//
//  PostPage.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import SwiftUI

struct PostPage: View {
    @EnvironmentObject var modelData: ModelData
    @State var selectionOption: String = "최신 순"
    @State var selectionType: String = "전체"
    
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
            ZStack {
                
                ScrollView(showsIndicators: false) {
                    PostPageHeader(selectionOption: $selectionOption, selectionType: $selectionType)
                    VStack {
                        ForEach(0..<votePosts.count) {
                            i in VStack(spacing: 0) {
                                VotePostRow(votePost: votePosts[i])
                                CustomDivider(height: 10)
                            }
                        }
                        ForEach(0..<questionPosts.count) {
                            i in VStack(spacing: 0) {
                                QuestionPostRow(questionPost: questionPosts[i])
                                if(i != questionPosts.count - 1) {
                                    CustomDivider(height: 10)
                                }
                            }
                        }
                    }
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {}) {
                            Circle()
                                .foregroundColor(.blue)
                                .frame(width: 70, height: 70)
                                .overlay(
                                    Image(systemName: "pencil")
                                        .resizable()
                                        .foregroundColor(.white)
                                        .frame(width: 35, height: 35)
                                )
                                .padding(10)
                        }
                        
                    }
                    
                }
            }
            .navigationTitle("게시판")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct PostPageHeader: View {
    @Binding var selectionOption: String
    @Binding var selectionType: String
    
    @State var postImages: [Image] = [
        Image(systemName: "a.circle.fill"),
        Image(systemName: "moon.circle.fill"),
        Image(systemName: "archivebox.circle.fill"),
    ]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    Button(action: {
                        selectionType = "전체"
                    }) {
                        VStack {
                            if (selectionType == "전체") {
                                postImages[0]
                                    .imageScale(.large)
                                    .foregroundColor(.blue)
                                    .font(.title)
                            } else {
                                postImages[0]
                                    .imageScale(.large)
                                    .foregroundColor(.black)
                                    .font(.title)
                            }
                            Text("전체")
                                .foregroundColor(.black)
                                .font(.subheadline)
                        }
                    }
                    Button(action:{
                        selectionType = "질문"
                    }) {
                        VStack {
                            if (selectionType == "질문") {
                                postImages[1]
                                    .imageScale(.large)
                                    .foregroundColor(.blue)
                                    .font(.title)
                            } else {
                                postImages[1]
                                    .imageScale(.large)
                                    .foregroundColor(.black)
                                    .font(.title)
                            }
                            Text("질문")
                                .foregroundColor(.black)
                                .font(.subheadline)
                        }
                    }
                    Button(action:{
                        selectionType = "투표"
                    }) {
                        VStack {
                            if (selectionType == "투표") {
                                postImages[2]
                                    .imageScale(.large)
                                    .foregroundColor(.blue)
                                    .font(.title)
                            } else {
                                postImages[2]
                                    .imageScale(.large)
                                    .foregroundColor(.black)
                                    .font(.title)
                            }
                            Text("투표")
                                .foregroundColor(.black)
                                .font(.subheadline)
                        }
                    }
                }
            }
            .padding(.horizontal, 10)
        }
        Divider()
        LazyVStack(alignment: .leading, spacing: 16) {
            HStack {
                Text(selectionType + " 게시판")
                Spacer()
                Picker("Select a paint color", selection: $selectionOption) {
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
        .padding(.horizontal, 10)
        Divider()
    }
    
}

struct PostPage_Previews: PreviewProvider {
    static var previews: some View {
        PostPage().environmentObject(ModelData())
    }
}
