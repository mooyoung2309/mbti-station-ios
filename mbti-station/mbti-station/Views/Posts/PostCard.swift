////
////  PostCard.swift
////  mbti-station
////
////  Created by 송영모 on 2022/02/24.
////
//
//import SwiftUI
//
//struct PostCard: View {
//    var post: Post
//    
//    var body: some View {
//        VStack {
//            Text(post.title).font(.title3)
//                .padding(.bottom, 5)
//            Text(post.context).font(.body)
//                .padding(.bottom, 5)
//            HStack(alignment: .center,spacing: 2) {
//                Image(systemName: "heart")
//                    .foregroundColor(Color.init(UIColor.darkGray))
//                    .imageScale(.small)
//                Text(String(post.likeCount))
//                    .foregroundColor(Color.init(UIColor.darkGray))
//                    .font(.caption)
//                Image(systemName: "bubble.left")
//                    .foregroundColor(Color.init(UIColor.darkGray))
//                    .imageScale(.small)
//                Text(String(post.commentCount))
//                    .foregroundColor(Color.init(UIColor.darkGray))
//                    .font(.caption)
//            }
//            
//        }
//        .frame(width: 250, height: 150, alignment: .center)
//        .overlay(RoundedRectangle(cornerRadius: 20)
//                    .stroke(Color.init(UIColor.darkGray), lineWidth: 1))
//        .padding(5)
//        
//    }
//}
//
//struct PostCard_Previews: PreviewProvider {
//    static var posts = ModelData().editorPosts
//    
//    static var previews: some View {
//        PostCard(post: posts[0])
//    }
//}
