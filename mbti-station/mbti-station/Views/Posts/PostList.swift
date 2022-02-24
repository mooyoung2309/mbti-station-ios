//
//  PostList.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/24.
//

import SwiftUI

struct PostList: View {
    @EnvironmentObject var modelData: ModelData
    
    var posts: [Post] {
        modelData.posts
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading,spacing: 5) {
                    
                    HStack {
                        Text("인기 게시글")
                            .font(.title)
                            .bold()
                        Spacer()
                        NavigationLink {
                            PostDetail()
                        } label: {
                            Text("모두 보기")
                                .font(.title3)
                                .foregroundColor(.blue)
                        }
                    }
                    ForEach(0..<5) {
                        i in VStack {
                            PostRow(post: posts[i])
                            if(i != posts.count - 1) {
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
