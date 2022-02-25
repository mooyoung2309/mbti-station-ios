//
//  User.swift
//  mbti-station
//
//  Created by 송영모 on 2022/02/25.
//

import Foundation

struct User: Hashable, Codable {
    var id: Int
    var name: String
    var mbti: String
}
