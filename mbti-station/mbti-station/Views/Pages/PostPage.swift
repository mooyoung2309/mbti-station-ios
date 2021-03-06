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
    @State var selectionType: String = "✏️ 질문"
    
    let sortOptions = ["최신 순", "좋아요 순", "댓글 순"]
    
    var postOptions: [PostOption] {
        modelData.postOptions
    }
    var questionPosts: [Question] {
        modelData.questions
    }
    var votes: [Vote] {
        modelData.votes
    }
    
    var postTypes: [String] {
        modelData.postTypes
    }
    
    
    
    var body: some View {
        
        return NavigationView {
            ZStack {
                ScrollView(showsIndicators: false) {
                    HStack {
                        ForEach(postTypes, id: \.self) {
                            postType in PostTypeBtns(selection: $selectionType, name: postType)
                        }
                        Spacer()
                    }
                    .padding(.horizontal, 10)
                    
                    LazyVStack(alignment: .leading, spacing: 16) {
                        HStack {
                            Text(selectionType + " 게시판")
                                .font(.subheadline)
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
                    
                    VStack(spacing: 0) {
                        ForEach(0..<votes.count) {
                            i in VStack(spacing: 0) {
                                VotePostRow(vote: votes[i])
                                CustomDivider(height: 10)
                            }
                        }
                        ForEach(0..<questionPosts.count) {
                            i in VStack(spacing: 0) {
                                QuestionRow(question: questionPosts[i])
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
                        NavigationLink {
                            PostingView()
                        } label: {
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


struct PostPage_Previews: PreviewProvider {
    static var previews: some View {
        PostPage().environmentObject(ModelData())
    }
}
