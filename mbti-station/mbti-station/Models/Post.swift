//
//  Post.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/24.
//

import Foundation
import SwiftUI

struct Post: Hashable, Codable {
    var user: PostUser
    var type: PostType
    var info: PostInfo
}

struct PostUser: Hashable, Codable {
    var name: String
    var mbti: String
}

struct PostType: Hashable, Codable {
    var name: String
    
    var imageName: String
    var image: Image {
        Image(systemName: imageName)
    }
}

struct PostInfo: Hashable, Codable {
    var title: String
    var context: String
    var likeCount: Int
    var commentCount: Int
    var uploadDate: String
}
