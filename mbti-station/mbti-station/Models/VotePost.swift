//
//  VotePost.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/26.
//

import Foundation

struct VotePost: Hashable, Codable, Identifiable {
    var id: Int
    var post: Post
    var options: [VoteOption]
}

struct VoteOption: Hashable, Codable {
    var id: Int
    var name: String
    var results: [VoteResult]
}

struct VoteResult: Hashable, Codable {
    var mbti: String
    var count: Int
}
