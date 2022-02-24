//
//  PostList.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/24.
//

import SwiftUI

struct PostList: View {
    @EnvironmentObject var modelData: ModelData
    
    var hotPosts: [Post] {
        modelData.posts
    }
    
    var body: some View {
        let _hotPosts = hotPosts.prefix(5)
        
        NavigationView {
            ScrollView {
                VStack(alignment: .leading,spacing: 5) {
                    HStack {
                        Text("인기 게시글")
                            .font(.title)
                            .bold()
                        Spacer()
                        NavigationLink {
                            PostDetail(posts: hotPosts)
                                .navigationTitle("인기 게시글")
                                .navigationBarTitleDisplayMode(.inline)
                        } label: {
                            Text("모두 보기")
                                .font(.title3)
                                .foregroundColor(.blue)
                        }
                    }
                    ForEach(0..<_hotPosts.count) {
                        i in VStack {
                            PostRow(post: _hotPosts[i])
                            if(i != _hotPosts.count - 1) {
                                Divider()
                            }
                        }
                    }
                }
            }.padding(.horizontal, 20)
            .navigationTitle("홈")
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList().environmentObject(ModelData())
    }
}
