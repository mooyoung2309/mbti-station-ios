//
//  QuestionPost.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

struct Question: Hashable, Codable, Identifiable {
    var id: Int
    var post: Post
}
