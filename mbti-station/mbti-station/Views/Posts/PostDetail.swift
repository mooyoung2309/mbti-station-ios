//
//  PostDetail.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/24.
//

import SwiftUI

struct PostDetail: View {
    var posts: [Post]
    
    var body: some View {       
        ScrollView {
            ForEach(0..<posts.count) {
                i in VStack {
                    PostRow(post: posts[i])
                    if(i != posts.count - 1) {
                        Divider()
                    }
                }
            }
        }.padding(.horizontal, 20)
    }
}

struct PostDetail_Previews: PreviewProvider {
    static var posts = ModelData().posts
    
    static var previews: some View {
        PostDetail(posts: posts)
    }
}
