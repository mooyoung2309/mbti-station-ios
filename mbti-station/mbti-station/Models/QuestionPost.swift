//
//  QuestionPost.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

struct QuestionPost: Hashable, Codable, Identifiable {
    var id: Int
    var post: Post
    var title: String
    var context: String
}
