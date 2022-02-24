//
//  Post.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/24.
//

import Foundation

struct Post: Hashable, Codable, Identifiable {
    var id: Int
    var mbti: String
    var name: String
    var title: String
    var context: String
    var likeCount: Int
    var commentCount: Int
    var uploadDate: String
}
