//
//  PostCardList.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/24.
//

import SwiftUI

struct PostCardScrollView: View {
    var navigationTitle: String
    var posts: [Post]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(navigationTitle)
                .font(.title2)
                .bold()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<posts.count) {
                        i in PostCard(post: posts[i])
                    }
                }
            }
        }
    }
}

struct PostCardScrollView_Previews: PreviewProvider {
    static var editorPosts = ModelData().editorPosts
    
    static var previews: some View {
        PostCardScrollView(navigationTitle: "에디터 픽", posts: editorPosts)
    }
}
