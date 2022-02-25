////
////  PostList.swift
////  mbti-station
////
////  Created by 송영모 on 2022/02/24.
////
//
//import SwiftUI
//
//struct PostList: View {
//    var navigationTitle: String
//    var posts: [Post]
//    
//    var body: some View {
//        let _posts = posts.prefix(3)
//        
//        VStack(alignment: .leading,spacing: 5) {
//            HStack {
//                Text(navigationTitle)
//                    .font(.title2)
//                    .bold()
//                Spacer()
//                NavigationLink {
//                    PostDetail(posts: posts)
//                        .navigationTitle(navigationTitle)
//                        .navigationBarTitleDisplayMode(.inline)
//                } label: {
//                    Text("모두 보기")
//                        .font(.title3)
//                        .foregroundColor(.blue)
//                }
//            }
//            ForEach(0..<_posts.count) {
//                i in VStack {
//                    PostRow(post: _posts[i])
//                    if(i != _posts.count - 1) {
//                        Divider()
//                    }
//                }
//            }
//        }
//        
//        //        NavigationView {
//        //            ScrollView {
//        //                VStack(alignment: .leading,spacing: 5) {
//        //                    HStack {
//        //                        Text("인기 게시글")
//        //                            .font(.title2)
//        //                            .bold()
//        //                        Spacer()
//        //                        NavigationLink {
//        //                            PostDetail(posts: hotPosts)
//        //                                .navigationTitle("인기 게시글")
//        //                                .navigationBarTitleDisplayMode(.inline)
//        //                        } label: {
//        //                            Text("모두 보기")
//        //                                .font(.title3)
//        //                                .foregroundColor(.blue)
//        //                        }
//        //                    }
//        //                    ForEach(0..<_hotPosts.count) {
//        //                        i in VStack {
//        //                            PostRow(post: _hotPosts[i])
//        //                            if(i != _hotPosts.count - 1) {
//        //                                Divider()
//        //                            }
//        //                        }
//        //                    }
//        //                }.padding(.bottom, 20)
//        //
//        //                VStack(alignment: .leading,spacing: 5) {
//        //                    HStack {
//        //                        Text("INFP가 좋아한 게시글")
//        //                            .font(.title2)
//        //                            .bold()
//        //                        Spacer()
//        //                        NavigationLink {
//        //                            PostDetail(posts: hotPosts)
//        //                                .navigationTitle("인기 게시글")
//        //                                .navigationBarTitleDisplayMode(.inline)
//        //                        } label: {
//        //                            Text("모두 보기")
//        //                                .font(.title3)
//        //                                .foregroundColor(.blue)
//        //                        }
//        //                    }
//        //                    ForEach(0..<_hotPosts.count) {
//        //                        i in VStack {
//        //                            PostRow(post: _hotPosts[i])
//        //                            if(i != _hotPosts.count - 1) {
//        //                                Divider()
//        //                            }
//        //                        }
//        //                    }
//        //                }
//        //
//        //            }.padding(.horizontal, 20)
//        //                .navigationTitle("홈")
//        //        }
//        
//        //        NavigationView {
//        //            List {
//        //                Section(header: HStack {
//        //                    Text("🔥인기 게시글")
//        //                        .foregroundColor(.black)
//        //                        .font(.title)
//        //                        .bold()
//        //                    Spacer()
//        //                    NavigationLink {
//        //                        PostDetail(posts: hotPosts)
//        //                            .navigationTitle("인기 게시글")
//        //                            .navigationBarTitleDisplayMode(.inline)
//        //                    } label: {
//        //                        Text("모두 보기")
//        //                            .foregroundColor(.blue)
//        //                            .font(.title3)
//        //                    }
//        //                }.listRowInsets(EdgeInsets(.zero))
//        //                ) {
//        //                    ForEach(0..<_hotPosts.count) {
//        //                        i in VStack {
//        //                            PostRow(post: _hotPosts[i])
//        //                        }
//        //                    }
//        //                }
//        //
//        //            }
//        //        }
//    }
//}
//
//struct PostList_Previews: PreviewProvider {
//    static var posts = Array(ModelData().posts.prefix(5))
//    
//    static var previews: some View {
//        PostList(navigationTitle: "인기 게시글", posts: posts)
//    }
//}
