//
//  HomePage.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/24.
//

import SwiftUI

struct HomePage: View {
    @EnvironmentObject var modelData: ModelData
    
    var hotPosts: [Post] {
        modelData.posts
    }
    var editorPosts: [Post] {
        modelData.editorPosts
    }
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                PostCardScrollView(navigationTitle: "모여봐요 ✏️",posts: editorPosts)
                    .padding(.bottom, 20)
                PostList(navigationTitle: "인기 🔥", posts: hotPosts)
                    .padding(.bottom, 20)
                PostList(navigationTitle: "INFP 🙂", posts: hotPosts)
            }
            
            .navigationTitle("홈")
            .padding(.horizontal, 20)
        }
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage().environmentObject(ModelData())
    }
}
